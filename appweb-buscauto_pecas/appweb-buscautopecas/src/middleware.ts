import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import { decryptJWT } from '@/lib/auth-edge';

export async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl;

  // Rotas que queremos proteger: Dashboard do Lojista e APIs do Lojista
  // Note que `/lojista/login` e `/lojista/cadastro` NÃO devem estar protegidos.
  const isLojistaDashboard = pathname.startsWith('/lojista') && !pathname.startsWith('/lojista/login') && !pathname.startsWith('/lojista/cadastro');
  const isSellerAPI = pathname.startsWith('/api/seller');

  if (isLojistaDashboard || isSellerAPI) {
    const token = request.cookies.get('auth_token')?.value;

    if (!token) {
      if (isSellerAPI) {
        return NextResponse.json({ error: 'Não autorizado' }, { status: 401 });
      }
      const loginUrl = new URL('/lojista/login', request.url);
      return NextResponse.redirect(loginUrl);
    }

    try {
      const payload = await decryptJWT(token);
      if (!payload) {
        throw new Error('Invalid token');
      }
      
      // Token é válido. Clona a requisição adicionando headers do usuário se necessário
      const requestHeaders = new Headers(request.headers);
      requestHeaders.set('x-user-company-id', payload.companyId);
      if (payload.storeId) {
        requestHeaders.set('x-user-store-id', payload.storeId);
      }

      return NextResponse.next({
        request: {
          headers: requestHeaders,
        },
      });
    } catch (error) {
      // Token inválido ou expirado
      request.cookies.delete('auth_token');
      if (isSellerAPI) {
        return NextResponse.json({ error: 'Token inválido ou expirado' }, { status: 401 });
      }
      const loginUrl = new URL('/lojista/login', request.url);
      return NextResponse.redirect(loginUrl);
    }
  }

  return NextResponse.next();
}

export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - api/auth (auth endpoints)
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     */
    '/((?!api/auth|_next/static|_next/image|favicon.ico).*)',
  ],
};

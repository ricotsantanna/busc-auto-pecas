import { NextResponse } from 'next/server'
import type { NextRequest } from 'next/server'
import { jwtVerify } from 'jose'

const JWT_SECRET = new TextEncoder().encode(process.env.JWT_SECRET || "super_secret_dev_key");

export async function middleware(request: NextRequest) {
  const path = request.nextUrl.pathname;

  // Only protect /lojista routes (excluding login and signup)
  if (path.startsWith('/lojista')) {
    if (path === '/lojista/login' || path === '/lojista/cadastro') {
      return NextResponse.next();
    }

    const token = request.cookies.get('auth_token')?.value;

    if (!token) {
      return NextResponse.redirect(new URL('/lojista/login', request.url));
    }

    try {
      // Verify JWT token
      await jwtVerify(token, JWT_SECRET);
      return NextResponse.next();
    } catch (error) {
      // Invalid or expired token
      const response = NextResponse.redirect(new URL('/lojista/login', request.url));
      response.cookies.delete('auth_token');
      return response;
    }
  }

  return NextResponse.next();
}

export const config = {
  matcher: ['/lojista/:path*'],
}

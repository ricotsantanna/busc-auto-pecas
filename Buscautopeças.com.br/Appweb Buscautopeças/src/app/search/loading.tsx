export default function Loading() {
  return (
    <div className="min-h-screen bg-brand-bg">
      <div className="container py-8">
        <div className="animate-pulse space-y-4">
          <div className="h-8 w-64 bg-slate-200 rounded" />
          <div className="h-4 w-96 bg-slate-200 rounded" />
          <div className="grid md:grid-cols-[280px_1fr] gap-6 mt-8">
            <div className="h-64 bg-white ring-1 ring-slate-200 rounded-2xl" />
            <div className="space-y-3">
              {Array.from({ length: 5 }).map((_, i) => (
                <div key={i} className="h-28 bg-white ring-1 ring-slate-200 rounded-2xl" />
              ))}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

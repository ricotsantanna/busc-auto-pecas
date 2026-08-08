"use client";

import { LogOut } from "lucide-react";
import { useRouter } from "next/navigation";

export function LogoutButton() {
  const router = useRouter();

  const handleLogout = async () => {
    await fetch("/api/auth/logout", { method: "POST" });
    router.push("/lojista/login");
  };

  return (
    <button 
      onClick={handleLogout}
      className="flex items-center gap-3 px-3 py-2 w-full rounded-md text-red-400 hover:bg-red-500/10 transition-colors"
    >
      <LogOut className="w-5 h-5" />
      Sair
    </button>
  );
}

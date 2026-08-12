import { redirect } from "next/navigation";

export const runtime = "edge";

export default function LoginPage() {
  redirect("/lojista/login");
}

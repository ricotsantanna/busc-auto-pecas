import { redirect } from "next/navigation";

export const runtime = "edge";

export default function InventoryPage() {
  redirect("/lojista/estoque");
}

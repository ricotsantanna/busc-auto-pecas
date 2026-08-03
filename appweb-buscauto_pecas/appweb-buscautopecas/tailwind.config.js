/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: ["class"],
  content: [
    "./pages/**/*.{js,jsx,ts,tsx}",
    "./components/**/*.{js,jsx,ts,tsx}",
    "./app/**/*.{js,jsx,ts,tsx}",
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    container: {
      center: true,
      padding: "2rem",
      screens: { "2xl": "1400px" },
    },
    extend: {
      colors: {
        // Design system BuscAutoPeças (Alinhado com a Logo Oficial)
        brand: {
          primary: "#0B0E28",   // Dark Navy Blue da Logo
          secondary: "#FF6B00", // Laranja Vibrante da Logo
          accent: "#2563EB",    // Azul real de destaque
          success: "#10B981",   // Emerald 500
          warning: "#F59E0B",   // Amber 500
          bg: "#F8FAFC",        // Slate 50
          ink: "#0F172A",       // Slate 900
          muted: "#475569",     // Slate 600
        },
      },
      fontFamily: {
        sans: ["Inter", "ui-sans-serif", "system-ui", "sans-serif"],
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
};

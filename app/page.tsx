"use client";
import { useEffect } from "react";

export default function Home() {
  useEffect(() => {
    console.log("API URL:", process.env.NEXT_PUBLIC_API_URL);
  }, []);
  return (
    <div className="flex min-h-screen items-center justify-center bg-zinc-50 font-sans dark:bg-black">
     Hello Next JS {process.env.NEXT_PUBLIC_API_URL }
    </div>
  );
}

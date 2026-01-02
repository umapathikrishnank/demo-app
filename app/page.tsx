export default function Home() {
  return (
    <div className="flex min-h-screen items-center justify-center bg-zinc-50 font-sans dark:bg-black">
     Hello Next JS {process.env.NEXT_PUBLIC_API_URL }
    </div>
  );
}

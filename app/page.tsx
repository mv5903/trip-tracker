"use client";

import dynamic from "next/dynamic";

// Dynamically import the Map component with SSR disabled
const Map = dynamic(() => import("./components/Map"), { ssr: false });

export default function Home() {
  const defaultPosition = [40.7, -74];

  return <Map position={defaultPosition} zoom={4} />;
}

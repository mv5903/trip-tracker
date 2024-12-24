"use client";

import { getSegments } from "@/lib/APICalls";
import { SegmentWithPin } from "@/types/SegmentWithPin";
import "leaflet-defaulticon-compatibility";
import "leaflet-defaulticon-compatibility/dist/leaflet-defaulticon-compatibility.css";
import "leaflet/dist/leaflet.css";
import { useEffect, useState } from "react";
import { MapContainer, Marker, Polyline, Popup, TileLayer } from "react-leaflet";

export default function MapComponent(props: any) {
    const darkMode = "https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png";
    const lightMode = "https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png";

    const { position, zoom } = props;
    const [style, setStyle] = useState(darkMode);
    const [dark, setDark] = useState(true);
    const [segments, setSegments] = useState<SegmentWithPin[]>([]);

    useEffect(() => {
        getSegments().then((data) => {
            let segments: SegmentWithPin[] = data.segments;
            setSegments(segments);
        });
    }, []);


    return (
        <div className="relative h-screen w-full">
            <div className="absolute top-2 right-2 p-4 z-[10000] flex flex-col items-center justify-center gap-2 bg-[#333333] shadow-md rounded-md">
                <label className="toggle-label">{dark ? "Dark" : "Light"}</label>
                <input type="checkbox" className="toggle" checked={dark} onChange={() => {
                        setDark(!dark);
                        setStyle(dark ? lightMode : darkMode);
                    }} />
            </div>

            <MapContainer center={position} zoom={zoom} className="h-screen w-full">
                <TileLayer attribution='&copy; OpenStreetMap contributors' url={style} />
                {
                    Array.isArray(segments) && segments != null && segments?.map((segment: SegmentWithPin) => {
                        const fromCoords: [number, number] = [segment.pin_segment_pin_fromTopin.latitude, segment.pin_segment_pin_fromTopin.longitude];
                        const toCoords: [number, number] = [segment.pin_segment_pin_toTopin.latitude, segment.pin_segment_pin_toTopin.longitude];
                        const colors = ["blue", "red", "green", "purple", "orange", "yellow"];
                        const randomColor = colors[Math.floor(Math.random() * colors.length)];
                        return (
                            <div key={segment.id}>
                                <Marker key={segment.pin_segment_pin_fromTopin.id} position={fromCoords}>
                                    <Popup>{`Segment ${segment.pin_segment_pin_fromTopin.id}`}</Popup>
                                </Marker>
                                <Marker key={segment.pin_segment_pin_toTopin.id} position={toCoords}>
                                    <Popup>{`Segment ${segment.pin_segment_pin_toTopin.id}`}</Popup>
                                </Marker>
                                <Polyline positions={[fromCoords, toCoords]} color={randomColor} />
                            </div>
                        );
                    })
                }
            </MapContainer>
        </div>
    );
}

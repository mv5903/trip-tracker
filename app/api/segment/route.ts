import { prisma } from '@/lib/Prisma';
import { NextResponse } from 'next/server';

export async function GET() {
    try {
        const segments = await prisma.segment.findMany({
            include: {
                pin_segment_pin_fromTopin: true,
                pin_segment_pin_toTopin: true,
            }
        });

        if (!segments) {
            return NextResponse.json(
                { error: 'No segments found' },
                { status: 404 }
            );
        }

        // Optionally wrap in an object
        return NextResponse.json({ segments });
    } catch (error) {
        return NextResponse.json(
            { error: 'Internal Server Error' },
            { status: 500 }
        );
    }
}

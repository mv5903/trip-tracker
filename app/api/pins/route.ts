import { prisma } from '@/lib/Prisma';
import { NextResponse } from 'next/server';

export async function GET() {
  try {
    // Just fetch from the "Pin" table without any includes or relation fields
    const pins = await prisma.pin.findMany();
    console.log('Pins:', pins);

    return NextResponse.json(pins);
  } catch (error) {
    console.error('Error fetching pins:', error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}

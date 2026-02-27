import { NextResponse } from "next/server";

export const dynamic = 'force-dynamic';

let items = [];


  export async function GET() {
  return NextResponse.json(items.count()); 
}

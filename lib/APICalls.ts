export async function getSegments() {
    const response = await fetch("/api/segment");
    if (!response.ok) {
        throw new Error(response.statusText);
    }
    return response.json();
}

export async function getPins() {
    const response = await fetch("/api/pins");
    if (!response.ok) {
        throw new Error(response.statusText);
    }
    return response.json();
}
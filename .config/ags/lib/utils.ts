export function truncate(text: string, max: number): string {
    if (text.length > max) {
        return text.slice(0, max - 1) + "...";
    }
    return text;
}

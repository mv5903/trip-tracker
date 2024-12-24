export type SegmentWithPin = {
    id: number;
    fromDate: string | null;
    toDate: string | null;
    pin_segment_pin_fromTopin: {
        id: number;
        label: string;
        latitude: number;
        longitude: number;
    };
    pin_segment_pin_toTopin: {
        id: number;
        label: string;
        latitude: number;
        longitude: number;
    };
};
  
# Jet Quote Desk

A one-page quotation builder for the charter team. Open `index.html` in any browser (no install, no internet needed apart from fonts).

## What it does
- **Aircraft** (dropdown): VT-NDA (Citation CJ2+, 290 kt, ₹2,65,000/hr), VT-ZST (Challenger 604, 400 kt, ₹6,30,000/hr), VT-APL (Challenger 605, 400 kt, ₹6,30,000/hr).
- **Sectors**: type IATA codes or city names, `+ Add new sector` chains from the last arrival. Block time is estimated per sector:
  `great-circle NM × 1.08 routing ÷ cruise speed + 15 min taxi/climb/descent`, rounded up to 5 min. Type over it (`2:10`) when ops gives a firm figure.
- **Ground handling**: one handling = one arrival + one departure at an airport. Handlings per airport = the larger of its arrivals and departures (BOM→DEL→BOM = 1 at BOM, 1 at DEL; BOM→DEL→BOM→GOI = 2 at BOM). Charged using Mumbai / Delhi / Ahmedabad / Jaipur / other-airport rates for large or light jets. Each station can be switched off (e.g. home base). Navi Mumbai (NMI) uses the Mumbai rate.
- **Aircraft blocked**: from/to dates plus a +/− day counter (inclusive). Crew LBT = days × per-day rate, switchable.
- **Other charges**: free-form lines (catering, permits, positioning).
- **Totals**: subtotal, GST @ 18% shown separately, grand total.
- **Copy for WhatsApp** (with *bold*) or **Copy for email** (plain text).
- **Rates & settings**: edit hourly rates, LBT, handling and the block-time formula. Changes apply to the current quote only; **New quote** (or reloading the page) always starts from the standard rates.

## Editing
Edit `src/quote-desk.html`, then run `./build.sh` to regenerate `index.html`. Standard rates live in the `DEFAULTS` object at the top of the script.

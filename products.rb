require "pry"
require_relative 'convert'

products = [
	{
		"productSize": "",
		"item": "DELUXE COOKED HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "102",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DELUXE LOW-SODIUM COOKED HAM ",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "159",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DELUXE LOW-SODIUM WHOLE HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "105",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SMOKED VIRGINA HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "156",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HONEY MAPLE HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "150",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HONEY MAPLE HAM 1/2",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "151",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BAVARIAN SMOKED HAM ",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "166",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BLACK FOREST BEECHWOOD HAM L/S",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "11005",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "TAVERN SMOKED HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "158",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "ROSEMARY HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "173",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PESTO PARMESAN HAM",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "189",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DELI SWEET SLICE SMOKED HAM",
		"plu_upc": "",
		"price": " $4.95 ",
		"productId": "11018",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HABANERO HAM ",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "11044",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "ITALIAN RSTD HAM (PROSC COTTO)",
		"plu_upc": "",
		"price": " $5.79 ",
		"productId": "11022",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SUNDAY HOT HAM (SWEET SLICE)",
		"plu_upc": "",
		"price": " $4.95 ",
		"productId": "11018",
		"catId": "1",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DELUXE ROAST BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "235",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LONDONPORT ROAST BEEF",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "915",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "ITALIAN ROAST BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "232",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SEASOND ROAST BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "246",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CORNED BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.50 ",
		"productId": "197",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PASTRAMI BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.50 ",
		"productId": "205",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LONDON BROIL ROAST BEEF",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "12011",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MESQUITE SMOKEHOUSE BRISKET ",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "12012",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CAJUN ROAST BEEF TOP-ROUND",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "227",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "WELL DONE SEASONED ROAST BEEF",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "12004",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "1ST CUT CORNED BEEF BRISKET",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "206",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "1ST CUT PASTRAMI BRISKET",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "210",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "NAVEL PASTRAMI FS serve hot",
		"plu_upc": "",
		"price": " $5.75 ",
		"productId": "341",
		"catId": "2",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "OVENGOLD TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "278",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CRACKED PEPPERMILL TURKEY",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "276",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MAPLE GLAZED HONEY COAT TURKEY",
		"plu_upc": "",
		"price": " $5.30 ",
		"productId": "270",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MESQUITE SMOKED TURKEY",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "294",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BLACK FOREST SMOKED TURKEY",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "297",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LOW-SODIUM TURKEY BREAST",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "421",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PASTRAMI SEASONED TURKEY",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "275",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SALSALITO TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "284",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CAJUN TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.15 ",
		"productId": "296",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HONEY SMOKED TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.30 ",
		"productId": "958",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "JERK TURKEY BREAST ",
		"plu_upc": "",
		"price": " $5.10 ",
		"productId": "13016",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "NO SALT ADDED TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.30 ",
		"productId": "13018",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BLACKENED TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.10 ",
		"productId": "13033",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PANCETTA ROASTED TURKEY BREAST",
		"plu_upc": "",
		"price": " $5.10 ",
		"productId": "13017",
		"catId": "3",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CHIPOTLE CHICKEN BREAST",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "13034",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "EVERROAST CHICKEN BREAST",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "13014",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "L/S GOLDEN CLASSIC CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "437",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HICKORY SMOKED CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "419",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "ALL AMERICAN BBQ CHICKEN ",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "13013",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "ROTISSERIE SEASONED CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "438",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BLAZIN BUFFALO CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "440",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LEMON PEPPER CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "439",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MAPLE GLAZED CHICKEN",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "13011",
		"catId": "4",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. UNCURED HAM",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "346",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. UNCURED SMOKED HAM",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "348",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. ROAST BEEF",
		"plu_upc": "",
		"price": " $7.50 ",
		"productId": "349",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. ROASTED TURKEY",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "326",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. SMOKED TURKEY",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "338",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. TUSCAN TURKEY BREAST",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "13008",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "A.N. LEMON & HERB TURKEY BREAST",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "13009",
		"catId": "5",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PURE BOLOGNA PORK & BEEF ",
		"plu_upc": "",
		"price": " $3.45 ",
		"productId": "320",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LOW-SODIUM BOLOGNA ",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "357",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BEEF BOLOGNA",
		"plu_upc": "",
		"price": " $4.00 ",
		"productId": "358",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GARLIC BOLOGNA",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "354",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LIVERWURST NC STRASS",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "368",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SMOKED LIVERWURST NC",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "369",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "COOKED SALAMI",
		"plu_upc": "",
		"price": " $3.35 ",
		"productId": "325",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BEEF SALAMI",
		"plu_upc": "",
		"price": " $4.20 ",
		"productId": "327",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HEADCHEESE SQUARE",
		"plu_upc": "",
		"price": " $4.25 ",
		"productId": "303",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "OLIVE LOAF",
		"plu_upc": "",
		"price": " $3.75 ",
		"productId": "306",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "P&P LOAF (Pickle & Pimento)",
		"plu_upc": "",
		"price": " $3.75 ",
		"productId": "308",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DUTCH \"OLD FASHION\" LOAF",
		"plu_upc": "",
		"price": " $3.65 ",
		"productId": "307",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SPICED HAM OVAL",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "360",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CANADIAN BACON",
		"plu_upc": "",
		"price": " $6.35 ",
		"productId": "339",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LEBANON BOLOGNA",
		"plu_upc": "",
		"price": " $5.75 ",
		"productId": "781",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DELAFIELD SUMMER SAUSAGE",
		"plu_upc": "",
		"price": " $4.45 ",
		"productId": "DFSS",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DILANDRI AC GENOA SALAMI",
		"plu_upc": "",
		"price": " $3.75 ",
		"productId": "505",
		"catId": "6",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LITE LIVERWURST",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "342",
		"catId": "",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PARMA PROSCIUTTO",
		"plu_upc": "",
		"price": " $9.95 ",
		"productId": "711",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GOLD PROSCIUTTO",
		"plu_upc": "",
		"price": " $7.25 ",
		"productId": "500",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PROSCIUTTO Skls & Shkls",
		"plu_upc": "",
		"price": " $7.50 ",
		"productId": "531",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PICCOLO PROSCIUTTO ",
		"plu_upc": "",
		"price": " $7.00 ",
		"productId": "530",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SERRANO HAM - Imported from Spain",
		"plu_upc": "",
		"price": " $11.49 ",
		"productId": "11021",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CHORIZO ESPANOL SALAMI - impt Spain",
		"plu_upc": "",
		"price": " $7.20 ",
		"productId": "16113",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SOPRESSATA HOT",
		"plu_upc": "",
		"price": " $7.25 ",
		"productId": "596",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SOPRESSATA SWEET",
		"plu_upc": "",
		"price": " $7.25 ",
		"productId": "597",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SOPRES CALABRESE HOT",
		"plu_upc": "",
		"price": " $7.25 ",
		"productId": "868",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MORTADELLA w/ Pist",
		"plu_upc": "",
		"price": " $4.30 ",
		"productId": "511",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MORTADELLA w/ Pist SMALL",
		"plu_upc": "",
		"price": " $4.30 ",
		"productId": "509",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GENOA SALAMI 1/2",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "547",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HARD SALAMI 1/2",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "557",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BIANCO D'ORO DRY SALAME",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "568",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SLICING PEPPERONI",
		"plu_upc": "",
		"price": " $4.00 ",
		"productId": "558",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HOT BUTT CAPPY fiber",
		"plu_upc": "",
		"price": " $4.15 ",
		"productId": "137",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HOT CAPPOCOLA NC",
		"plu_upc": "",
		"price": " $5.50 ",
		"productId": "172",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SWT CAPPOCOLA NC",
		"plu_upc": "",
		"price": " $5.50 ",
		"productId": "178",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PANCETTA 1/2",
		"plu_upc": "",
		"price": " $7.00 ",
		"productId": "545",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DRY CURED SWEET COPPA NC",
		"plu_upc": "",
		"price": " $8.00 ",
		"productId": "503",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PORKETTA 1/2",
		"plu_upc": "",
		"price": " $6.00 ",
		"productId": "524",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BRESAOLA - Aged Dry Cured Beef Round",
		"plu_upc": "",
		"price": " $11.95 ",
		"productId": "16114",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LOMO EMBUCHADO - DRYCRD PK LOIN",
		"plu_upc": "",
		"price": " $11.99 ",
		"productId": "11020",
		"catId": "7",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SLICED PEPPERONI GAS FL",
		"plu_upc": "",
		"price": " $3.95 ",
		"productId": "527",
		"catId": "7",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "WHITE AMERICAN CHEESE",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "653",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "YELLOW AMERICAN CHEESE",
		"plu_upc": "",
		"price": " $3.50 ",
		"productId": "652",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "IMPORTED GOLD LABEL SWISS",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "682",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "WISCONSIN MILD SWISS",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "663",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BABY SWISS CHEESE",
		"plu_upc": "",
		"price": " $5.20 ",
		"productId": "672",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LACEY SWISS CHEESE",
		"plu_upc": "",
		"price": " $5.35 ",
		"productId": "670",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MILD PROVOLONE CHEESE",
		"plu_upc": "",
		"price": " $3.75 ",
		"productId": "668",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PICANTE PROVOLONE CHEESE",
		"plu_upc": "",
		"price": " $4.35 ",
		"productId": "648",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MILD ASIAGO CHEESE",
		"plu_upc": "",
		"price": " $4.35 ",
		"productId": "15010",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MOZZARELLA CHEESE",
		"plu_upc": "",
		"price": " $3.70 ",
		"productId": "620",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MUENSTER CHEESE",
		"plu_upc": "",
		"price": " $3.65 ",
		"productId": "654",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "L/S MUENSTER CHEESE 1/2",
		"plu_upc": "",
		"price": " $3.95 ",
		"productId": "704",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "COLBY JACK CHEESE",
		"plu_upc": "",
		"price": " $4.00 ",
		"productId": "700",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SLICING COLBY CHEESE",
		"plu_upc": "",
		"price": " $4.00 ",
		"productId": "701",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SHARP WIS YELLOW CHEDDAR",
		"plu_upc": "",
		"price": " $4.80 ",
		"productId": "666",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SHARP WIS WHITE CHEDDAR",
		"plu_upc": "",
		"price": " $4.80 ",
		"productId": "680",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "VERMONT WHITE CHEDDAR",
		"plu_upc": "",
		"price": " $4.30 ",
		"productId": "628",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "VERMONT MILD YELLOW CHEDDAR",
		"plu_upc": "",
		"price": " $4.30 ",
		"productId": "629",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HORSERADISH CHEDDAR",
		"plu_upc": "",
		"price": " $4.50 ",
		"productId": "627",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MONTEREY JACK CHEESE",
		"plu_upc": "",
		"price": " $3.95 ",
		"productId": "750",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PEPPERJACK CHEESE",
		"plu_upc": "",
		"price": " $3.95 ",
		"productId": "751",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PLAIN HAVARTI CHEESE",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "725",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "DILL HAVARTI CHEESE",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "726",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "JALAPENO HAVARTI CHEESE",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "727",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BUTTERKASE CHEESE",
		"plu_upc": "",
		"price": " $5.30 ",
		"productId": "715",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "FONTINA CHEESE",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "757",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SMOKED GOUDA CHEESE",
		"plu_upc": "",
		"price": " $4.95 ",
		"productId": "15035",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "3 PEPPER COLBY JACK ",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "15061",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CHIPOTLE GOUDA CHEESE ",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "15060",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GOUDA FROM HOLLAND SLICING ",
		"plu_upc": "",
		"price": " $5.95 ",
		"productId": "15025",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "FRENCH GRUYERE SLICING",
		"plu_upc": "",
		"price": " $9.45 ",
		"productId": "15026",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "APPENDAMM SWISS CHEESE SLICING ",
		"plu_upc": "",
		"price": "",
		"productId": " ",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MANCHEGO CHS LOAF - from Spain",
		"plu_upc": "",
		"price": " $8.39 ",
		"productId": "15027",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GOAT CHEESE LOAF",
		"plu_upc": "",
		"price": " $7.50 ",
		"productId": "15024",
		"catId": "8",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "APPENDAAM SWISS WHEEL",
		"plu_upc": "",
		"price": " $4.50 ",
		"productId": "15114",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CHIPOTLE GOUDA WHEEL",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "15073",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GOUDA Wheel HOLLAND ",
		"plu_upc": "",
		"price": " $5.35 ",
		"productId": "733",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BRIE WHEEL from FRANCE dble cr?me",
		"plu_upc": "",
		"price": " $6.00 ",
		"productId": "15054",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GORGONZOLA WHEEL",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "15013",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BLUE CHEESE WHEEL",
		"plu_upc": "",
		"price": " $5.25 ",
		"productId": "747",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "FETA 10# PAIL in water",
		"plu_upc": "",
		"price": " $3.60 ",
		"productId": "748",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CREAM CHSE Block 3#",
		"plu_upc": "",
		"price": " $2.40 ",
		"productId": "674",
		"catId": "9",
		"uom": "LB"
	},
	{
		"productSize": "100 pc",
		"item": "FS CREAM CHEESE PORTIONS",
		"plu_upc": "",
		"price": " $16.65 ",
		"productId": "15124",
		"catId": "9",
		"uom": "CS"
	},
	{
		"productSize": "6 oz",
		"item": "GORGONZOLA CRUMBLED ",
		"plu_upc": "042421-05931",
		"price": " $3.25 ",
		"productId": "931",
		"catId": "10",
		"uom": "EA"
	},
	{
		"productSize": "6 oz",
		"item": "BLUE CHEESE CRUMBLED ",
		"plu_upc": "042421-05930",
		"price": " $3.25 ",
		"productId": "930",
		"catId": "10",
		"uom": "EA"
	},
	{
		"productSize": "6 oz",
		"item": "FETA CHEESE CRUMBLED ",
		"plu_upc": "042421-05932",
		"price": " $3.25 ",
		"productId": "932",
		"catId": "10",
		"uom": "EA"
	},
	{
		"productSize": "6 oz",
		"item": "GRATED PARMESAN CUP IMPORTED",
		"plu_upc": "042421-05859",
		"price": " $2.95 ",
		"productId": "859",
		"catId": "10",
		"uom": "EA"
	},
	{
		"productSize": "6 oz",
		"item": "GRATED PEC ROMANO CUP IMPORTED",
		"plu_upc": "042421-05858",
		"price": " $2.95 ",
		"productId": "858",
		"catId": "10",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "PRE-CUT BLACK WAX CHEDDAR",
		"plu_upc": "042421-05963",
		"price": " $3.55 ",
		"productId": "963",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "PRE-CUT RED WAX CHEDDAR",
		"plu_upc": "042421-05964",
		"price": " $3.55 ",
		"productId": "964",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT HORSERADISH CHEDDAR",
		"plu_upc": "042421-05966",
		"price": " $2.95 ",
		"productId": "966",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT VERMONT CHEDDAR YELW",
		"plu_upc": "042421-15011",
		"price": " $2.65 ",
		"productId": "15011",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT CANADIAN CHEDDAR ",
		"plu_upc": "042421-05965",
		"price": " $4.75 ",
		"productId": "965",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "12 oz",
		"item": "PRE-CUT AGED PROVOLONE",
		"plu_upc": "042421-05983",
		"price": " $4.75 ",
		"productId": "983",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT ASIAGO ",
		"plu_upc": "042421-15022",
		"price": " $3.50 ",
		"productId": "15022",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "PRE-CUT GOLD LABEL SWISS",
		"plu_upc": "042421-05985",
		"price": " $3.75 ",
		"productId": "985",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "PRE-CUT BABY SWISS",
		"plu_upc": "042421-05984",
		"price": " $3.90 ",
		"productId": "984",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT COLBY LONGHORN",
		"plu_upc": "042421-05967",
		"price": " $2.60 ",
		"productId": "967",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT COLBY JACK ",
		"plu_upc": "042421-05968",
		"price": " $2.60 ",
		"productId": "968",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT HAVARTI PLAIN",
		"plu_upc": "042421-05976",
		"price": " $3.10 ",
		"productId": "976",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT HAVARTI DILL",
		"plu_upc": "042421-05977",
		"price": " $3.10 ",
		"productId": "977",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT HAVARTI JAL",
		"plu_upc": "042421-05978",
		"price": " $3.10 ",
		"productId": "978",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT BUTTERKASE",
		"plu_upc": "042421-05961",
		"price": " $3.30 ",
		"productId": "961",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT SMK BUTTERKASE",
		"plu_upc": "042421-05962",
		"price": " $3.30 ",
		"productId": "962",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT FETA",
		"plu_upc": "042421-05971",
		"price": " $2.55 ",
		"productId": "971",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "7 oz",
		"item": "PRE-CUT BLUE CHEESE",
		"plu_upc": "042421-05960",
		"price": " $3.20 ",
		"productId": "960",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT PEPPERJACK",
		"plu_upc": "042421-05980",
		"price": " $2.45 ",
		"productId": "980",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT MONTEREY JACK",
		"plu_upc": "042421-05979",
		"price": " $2.45 ",
		"productId": "979",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT MUENSTER",
		"plu_upc": "042421-05981",
		"price": " $2.50 ",
		"productId": "981",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT L/S MUENSTER",
		"plu_upc": "042421-05982",
		"price": " $2.60 ",
		"productId": "982",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT GRUYERE",
		"plu_upc": "042421-05974",
		"price": " $4.40 ",
		"productId": "974",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT SMK GRUYERE",
		"plu_upc": "042421-05975",
		"price": " $4.00 ",
		"productId": "975",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT EDAM",
		"plu_upc": "042421-05970",
		"price": " $4.40 ",
		"productId": "970",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "PRE-CUT FONTINA",
		"plu_upc": "042421-05972",
		"price": " $3.80 ",
		"productId": "972",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT SMOKED GOUDA ",
		"plu_upc": "042421-15062",
		"price": " $3.00 ",
		"productId": "15062",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT GOUDA",
		"plu_upc": "042421-05973",
		"price": " $3.65 ",
		"productId": "973",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT CHIPOTLE GOUDA CHEESE",
		"plu_upc": "042421-15070",
		"price": " $3.30 ",
		"productId": "15070",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT 3-PEPPER COLBY JACK ",
		"plu_upc": "042421-15071",
		"price": " $3.30 ",
		"productId": "15071",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PRE-CUT MOZZARELLA",
		"plu_upc": "042421-15069",
		"price": " $2.85 ",
		"productId": "15069",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "PRE-CUT APPENDAMM SWISS",
		"plu_upc": "",
		"price": " $6.25 ",
		"productId": "15126",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BRIE WHEEL WEDGES 8.5oz avg rand.",
		"plu_upc": "",
		"price": " $6.80 ",
		"productId": "15038",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "4 oz",
		"item": "GOAT CHEESE 4 oz. France ",
		"plu_upc": "",
		"price": " $2.85 ",
		"productId": "15041",
		"catId": "11",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "PRE-CUT AGED GOUDA - 28 month Holland",
		"plu_upc": "",
		"price": " $8.65 ",
		"productId": "15045",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRE-CUT DANISH BLUED Denmark",
		"plu_upc": "",
		"price": " $7.70 ",
		"productId": "15044",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRE-CUT MANCHEGO - 1 year Spain",
		"plu_upc": "",
		"price": " $11.35 ",
		"productId": "15037",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRE-CUT ASIAGO VECCHIO 1yr Italy",
		"plu_upc": "",
		"price": " $10.70 ",
		"productId": "15043",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRE-CUT ASIAGO PRESSATO Italy",
		"plu_upc": "",
		"price": " $7.89 ",
		"productId": "15042",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRE-CUT FONTINA Val D'Aosta Italy",
		"plu_upc": "",
		"price": " $11.90 ",
		"productId": "15046",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PARMIGIANO REGGIANO Random Wt",
		"plu_upc": "",
		"price": " $12.65 ",
		"productId": "846",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PECORINO ROMANO Random Wt",
		"plu_upc": "",
		"price": " $8.19 ",
		"productId": "844",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "GRANA PADANO Random Wt.",
		"plu_upc": "",
		"price": " $10.99 ",
		"productId": "847",
		"catId": "11",
		"uom": "LB"
	},
	{
		"productSize": "7 oz",
		"item": "BIANCO DORO ITAL CHUB ",
		"plu_upc": "042421-16030",
		"price": " $3.75 ",
		"productId": "16030",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8oz",
		"item": "ABRUZZESE HOT ",
		"plu_upc": "042421-16066",
		"price": " $3.70 ",
		"productId": "16066",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8oz",
		"item": "ABRUZZZESE SWEET ",
		"plu_upc": "042421-16065",
		"price": " $3.70 ",
		"productId": "16065",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "6.5oz",
		"item": "STICK PEPPERONI ",
		"plu_upc": "042421-16078",
		"price": " $2.30 ",
		"productId": "16078",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "6 oz",
		"item": "POUCH PEPPERONI ",
		"plu_upc": "042421-00595",
		"price": " $1.75 ",
		"productId": "595",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "4.5 oz",
		"item": "POUCH TURKEY PEPPERONI",
		"plu_upc": "042421-16154",
		"price": " $1.95 ",
		"productId": "16154",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PROSCIUTTO PANINO ",
		"plu_upc": "042421-16072",
		"price": " $3.80 ",
		"productId": "16072",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "SALAME PANINO ",
		"plu_upc": "042421-16071",
		"price": " $3.80 ",
		"productId": "16071",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "INSALATA PANINO ",
		"plu_upc": "042421-16070",
		"price": " $3.80 ",
		"productId": "16070",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "CHORIZO PANINO w/ Pepperoncini",
		"plu_upc": "042421-16148",
		"price": " $3.80 ",
		"productId": "16148",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "10.5oz",
		"item": "GENOA SALAME MINI ",
		"plu_upc": "042421-16067",
		"price": " $4.85 ",
		"productId": "16067",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "7.5oz",
		"item": "ITAL DRY SAUSAGE HOT",
		"plu_upc": "042421-16068",
		"price": " $3.55 ",
		"productId": "16068",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "7.5 oz",
		"item": "ITAL DRY SAUSAGE SWEET",
		"plu_upc": "042421-16069",
		"price": " $3.55 ",
		"productId": "16069",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "9oz",
		"item": "SOPPRESATA PRECUT MINI ",
		"plu_upc": "042421-16064",
		"price": " $5.30 ",
		"productId": "16064",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "9oz",
		"item": "SOPPRESATA MINI SWEET",
		"plu_upc": "042421-16062",
		"price": " $4.25 ",
		"productId": "16062",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "9oz",
		"item": "SOPPRESATA MINI HOT",
		"plu_upc": "042421-16063",
		"price": " $4.25 ",
		"productId": "16062",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "ALL NAT SALAME W/WINE",
		"plu_upc": "042421-16073",
		"price": " $4.75 ",
		"productId": "16073",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "PEPPERED SALAME ",
		"plu_upc": "042421-16093",
		"price": " $4.25 ",
		"productId": "16093",
		"catId": "12",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "BEEF SALAMI jr",
		"plu_upc": "042421-07021",
		"price": " $2.20 ",
		"productId": "335",
		"catId": "13",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "LIVER PATE' ",
		"plu_upc": "042421-070163",
		"price": " $1.70 ",
		"productId": "316",
		"catId": "13",
		"uom": "EA"
	},
	{
		"productSize": "12 oz",
		"item": "DELAFIELD SUMMER SAUSAGE",
		"plu_upc": "814464-01186",
		"price": " $4.40 ",
		"productId": "DF12",
		"catId": "13",
		"uom": "EA"
	},
	{
		"productSize": "4 oz",
		"item": "SOPRESSATA & PROVOLONE",
		"plu_upc": "042421-16018",
		"price": " $3.15 ",
		"productId": "16018",
		"catId": "14",
		"uom": "EA"
	},
	{
		"productSize": "4 oz",
		"item": "GENOA & PROVOLONE",
		"plu_upc": "042421-16019",
		"price": " $3.15 ",
		"productId": "16019",
		"catId": "14",
		"uom": "EA"
	},
	{
		"productSize": "4 oz",
		"item": "PANCETTA DICED TRAY",
		"plu_upc": "042421-16088",
		"price": " $2.60 ",
		"productId": "16088",
		"catId": "14",
		"uom": "EA"
	},
	{
		"productSize": "3 oz",
		"item": "PROSCIUTTO DI PARMA PS TRAY",
		"plu_upc": "042421-50037",
		"price": " $3.95 ",
		"productId": "50037",
		"catId": "14",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "DELI MUSTARD JAR",
		"plu_upc": "042421-06936",
		"price": " $1.40 ",
		"productId": "936",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "HONEY MUSTARD JARS",
		"plu_upc": "042421-06935",
		"price": " $2.05 ",
		"productId": "935",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "VIDALIA ONIONS JAR",
		"plu_upc": "042421-06956",
		"price": " $2.39 ",
		"productId": "956",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "11 oz",
		"item": "HAM GLAZE JAR",
		"plu_upc": "042421-06957",
		"price": " $2.50 ",
		"productId": "957",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "HORSERADISH GRATED JAR",
		"plu_upc": "042421-06937",
		"price": " $1.89 ",
		"productId": "937",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "5 oz",
		"item": "JALAPENO SAUCE",
		"plu_upc": "042421-00896",
		"price": " $2.39 ",
		"productId": "896",
		"catId": "15",
		"uom": "EA"
	},
	{
		"productSize": "9.5 oz",
		"item": "SQZ. DELI MUSTARD",
		"plu_upc": "042421-16001",
		"price": " $1.54 ",
		"productId": "16001",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "9.5 oz",
		"item": "SQZ. PUB HRSRADISH SAUCE",
		"plu_upc": "042421-16003",
		"price": " $2.15 ",
		"productId": "16003",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "10.5 oz",
		"item": "SQZ. HONEY MUSTARD ",
		"plu_upc": "042421-16002",
		"price": " $2.15 ",
		"productId": "16002",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "9 oz",
		"item": "SQZ. CAJUN REMOULADE",
		"plu_upc": "042421-16028",
		"price": " $2.45 ",
		"productId": "16028",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "8.5 oz",
		"item": "SQZ. DELI DRESSING",
		"plu_upc": "042421-00788",
		"price": " $1.99 ",
		"productId": "788",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "8.5 oz",
		"item": "SQZ. PEPPERHOUSE GOURMAISE",
		"plu_upc": "042421-16135",
		"price": " $2.19 ",
		"productId": "16135",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "SQZ. SWT & MILD BBQ 10 oz.SQ ",
		"plu_upc": "042421-16060",
		"price": " $2.39 ",
		"productId": "16060",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "8.5 oz",
		"item": "SQZ. FIREY CHIPOTLE GOURMAISE",
		"plu_upc": "042421-16132",
		"price": " $2.20 ",
		"productId": "16132",
		"catId": "16",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "TRADITIONAL HUMMUS",
		"plu_upc": "042421-16159",
		"price": " $2.20 ",
		"productId": "16159",
		"catId": "17",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "ROASTED PINE NUT HUMMUS",
		"plu_upc": "042421-16160",
		"price": " $2.20 ",
		"productId": "16160",
		"catId": "17",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "ROASTED RED PEPPER HUMMUS",
		"plu_upc": "042421-16162",
		"price": " $2.20 ",
		"productId": "16162",
		"catId": "17",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "ROASTED CHIPOTLE PEPPER HUMMUS",
		"plu_upc": "042421-16163",
		"price": " $2.20 ",
		"productId": "16163",
		"catId": "17",
		"uom": "EA"
	},
	{
		"productSize": "10 oz",
		"item": "ROASTED GARLIC HUMMUS",
		"plu_upc": "042421-16161",
		"price": " $2.20 ",
		"productId": "16161",
		"catId": "17",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "BEEF FRANKS Nat Cas ",
		"plu_upc": "",
		"price": " $4.80 ",
		"productId": "435",
		"catId": "18",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "LITE BEEF FRANKS Nat Cas",
		"plu_upc": "",
		"price": " $4.80 ",
		"productId": "436",
		"catId": "18",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PORK & BEEF FRANKS Nat Cas",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "484",
		"catId": "18",
		"uom": "LB"
	},
	{
		"productSize": "12.5oz.",
		"item": "LITE BEEF FRANKS 8pk SKNLS",
		"plu_upc": "042421-14004",
		"price": " $3.20 ",
		"productId": "14004",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# PORK & BEEF FRANKS skinless",
		"plu_upc": "042421-00006",
		"price": " $3.70 ",
		"productId": "405",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "12 oz.",
		"item": "12 oz. COCKTAIL BEEF FRANKS NC",
		"plu_upc": "042421-04417",
		"price": " $3.60 ",
		"productId": "417",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# BRATWURST Natural Casing",
		"plu_upc": "042421-24680",
		"price": " $4.15 ",
		"productId": "399",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# KNOCKWURST BEEF Natural Casing",
		"plu_upc": "042421-00008",
		"price": " $4.15 ",
		"productId": "410",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "12.5oz.",
		"item": "ALL BEEF FRANKS 8pk SKNLS",
		"plu_upc": "042421-14003",
		"price": " $3.20 ",
		"productId": "14003",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# SMK SAUSAGE SKLS",
		"plu_upc": "042421-04333",
		"price": " $3.60 ",
		"productId": "333",
		"catId": "19",
		"uom": "EA"
	},
	{
		"productSize": "5 lb",
		"item": "5# PORK & BEEF FRANKS (10-1) skinless",
		"plu_upc": "042421-04403",
		"price": " $3.40 ",
		"productId": "403",
		"catId": "20",
		"uom": "EA"
	},
	{
		"productSize": "5 lb",
		"item": "5# P&B FRANKS (8-1)",
		"plu_upc": "042421-04402",
		"price": " $3.40 ",
		"productId": "402",
		"catId": "20",
		"uom": "EA"
	},
	{
		"productSize": "2.5 lb",
		"item": "BEEF FRANKS SKINLESS 8/1 20 / PKG",
		"plu_upc": "042421-04413",
		"price": " $3.70 ",
		"productId": "413",
		"catId": "20",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "BEEF FRANKS SKLS 4/1 8 /pkg random",
		"plu_upc": "",
		"price": " $3.90 ",
		"productId": "415",
		"catId": "20",
		"uom": "LB"
	},
	{
		"productSize": "2.5 lb",
		"item": "P&B 1/4# FRANKS RETAIL PACK",
		"plu_upc": "042421-04483",
		"price": " $8.25 ",
		"productId": "483",
		"catId": "20",
		"uom": "EA"
	},
	{
		"productSize": "12.5 oz ",
		"item": "HORSERADISH SWEET PICKLE CHIP",
		"plu_upc": "042421-06485",
		"price": " $2.75 ",
		"productId": "485",
		"catId": "21",
		"uom": "EA"
	},
	{
		"productSize": "26 oz",
		"item": "KOSHER PICKLE SPEARS",
		"plu_upc": "042421-06486",
		"price": " $2.35 ",
		"productId": "486",
		"catId": "21",
		"uom": "EA"
	},
	{
		"productSize": "26 oz",
		"item": "KOSHER PICKLE WHOLES",
		"plu_upc": "042421-06487",
		"price": " $2.35 ",
		"productId": "487",
		"catId": "21",
		"uom": "EA"
	},
	{
		"productSize": "26 oz",
		"item": "KOSHER PICKLE HALVES",
		"plu_upc": "042421-06488",
		"price": " $2.35 ",
		"productId": "488",
		"catId": "21",
		"uom": "EA"
	},
	{
		"productSize": "2 lb",
		"item": "2# SAUERKRAUT ",
		"plu_upc": "70446-50000",
		"price": " $1.60 ",
		"productId": "730",
		"catId": "22",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# SAUERKRAUT ",
		"plu_upc": "70446-40000",
		"price": " $1.20 ",
		"productId": "731",
		"catId": "22",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "KIELBASA random weight",
		"plu_upc": "",
		"price": " $4.10 ",
		"productId": "331",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "RING BOLOGNA random weight",
		"plu_upc": "",
		"price": " $3.60 ",
		"productId": "330",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CANADIAN BACON CHUBS rand wt ",
		"plu_upc": "",
		"price": " $6.35 ",
		"productId": "347",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "1ST CUT CORNED BEEF RAW BRISKET",
		"plu_upc": "",
		"price": " $6.50 ",
		"productId": "211",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "WHOLE CORNED BEEF BRISKET RAW ",
		"plu_upc": "",
		"price": " $6.00 ",
		"productId": "223",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SMOKED PORK BUTT",
		"plu_upc": "",
		"price": " $4.85 ",
		"productId": "400",
		"catId": "23",
		"uom": "LB"
	},
	{
		"productSize": "1.25 lb",
		"item": "ST. LOUIS BBQ PORK RIBS 1/2 RACK",
		"plu_upc": "042421-11033",
		"price": " $6.79 ",
		"productId": "11033",
		"catId": "23",
		"uom": "EA"
	},
	{
		"productSize": "2.5 lb ",
		"item": "ST. LOUIS BBQ PORK RIBS FULL RACK",
		"plu_upc": "042421-11042",
		"price": " $12.79 ",
		"productId": "11042",
		"catId": "23",
		"uom": "EA"
	},
	{
		"productSize": "1 lb",
		"item": "1# HICKORY SMOKED BACON ",
		"plu_upc": "042421-22579",
		"price": " $4.30 ",
		"productId": "542",
		"catId": "24",
		"uom": "EA"
	},
	{
		"productSize": "8 oz",
		"item": "1/2# HICKORY SMOKED BACON",
		"plu_upc": "042421-22578",
		"price": " $2.48 ",
		"productId": "541",
		"catId": "24",
		"uom": "EA"
	},
	{
		"productSize": "12 oz ",
		"item": "12oz THICK CUT SMOKED BACON",
		"plu_upc": "042421-11046",
		"price": " $3.30 ",
		"productId": "11046",
		"catId": "24",
		"uom": "EA"
	},
	{
		"productSize": "2.29 oz",
		"item": "MICROWAVE BACON",
		"plu_upc": "042421-01480",
		"price": " $3.35 ",
		"productId": "480",
		"catId": "24",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "BABY SWEET-SLICE HAM",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "182",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "1/2 HOLIDAY SWEET SLICE HAM",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "153",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "WHOLE BABY SWEET SLICE HAM",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "934",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "WHOLE SWEET SLICE HAM",
		"plu_upc": "",
		"price": " $4.70 ",
		"productId": "152",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SMOKED BONE IN HAM",
		"plu_upc": "",
		"price": " $3.45 ",
		"productId": "119",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BABY BLK FOREST HAM",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "192",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "MAPLE HONEY BABY HAM",
		"plu_upc": "",
		"price": " $4.90 ",
		"productId": "193",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "APPLEWOOD SPIRAL HAM",
		"plu_upc": "",
		"price": " $5.20 ",
		"productId": "11038",
		"catId": "25",
		"uom": "LB"
	},
	{
		"productSize": "7 oz",
		"item": "HAM STEAK RETAIL PACKAGE",
		"plu_upc": "042421-50063",
		"price": " $2.95 ",
		"productId": "50063",
		"catId": "25",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DELI DINNER OVENGOLD TURKEY",
		"plu_upc": "",
		"price": " $4.95 ",
		"productId": "305",
		"catId": "26",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "HOLIDAY DINNER TURKEY OV. RST",
		"plu_upc": "",
		"price": " $4.75 ",
		"productId": "13001",
		"catId": "26",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BABY MAPLE HONEY TURKEY",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "194",
		"catId": "26",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "BABY HICKORY BLK FOREST TURKEY",
		"plu_upc": "",
		"price": " $4.80 ",
		"productId": "195",
		"catId": "26",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "PRECOOKED BACON 300 ct",
		"plu_upc": "",
		"price": " $55.00 ",
		"productId": "533",
		"catId": "27",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DOMESTIC LAYOUT BACON 18/22",
		"plu_upc": "",
		"price": " $4.25 ",
		"productId": "536",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "IMPORTED LAYER BACON 18/22",
		"plu_upc": "",
		"price": " $4.25 ",
		"productId": "540",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "IMPORTED LAYOUT BACON 18/22",
		"plu_upc": "",
		"price": " $4.25 ",
		"productId": "543",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "IMPORTED LAYER BACON 12/14",
		"plu_upc": "",
		"price": " $4.25 ",
		"productId": "546",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "APPLEWOOD SMOKED 14/16",
		"plu_upc": "",
		"price": " $4.45 ",
		"productId": "11003",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CANADIAN LAYER APPLEWOOD 14/18",
		"plu_upc": "",
		"price": " $3.80 ",
		"productId": "70012",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SLAB BACON VP - DOMESTIC",
		"plu_upc": "",
		"price": " $3.90 ",
		"productId": "336",
		"catId": "27",
		"uom": "LB"
	},
	{
		"productSize": "5 gal",
		"item": "PICKLES - 1/2 SOUR 55 ct.",
		"plu_upc": "",
		"price": " $25.00 ",
		"productId": "791",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "5 gal",
		"item": "PICKLE SPEARS Garlic",
		"plu_upc": "",
		"price": " $25.00 ",
		"productId": "796",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "5 gal",
		"item": "PICKLE CHIPS 1/8\"cut",
		"plu_upc": "",
		"price": " $25.00 ",
		"productId": "813",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "5 gal",
		"item": "PICKLE GARLIC",
		"plu_upc": "",
		"price": " $25.00 ",
		"productId": "795",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "5 gal",
		"item": "PICKLE DILL",
		"plu_upc": "",
		"price": " $25.00 ",
		"productId": "797",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "7.5 lb",
		"item": "CHERRY PEPPERS 7.5 lb pl/ 60 per",
		"plu_upc": "",
		"price": " $39.00 ",
		"productId": "800",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "1/2 gal",
		"item": "SWT PICKLE CHIPS w/ HORSERADISH",
		"plu_upc": "",
		"price": " $31.00 ",
		"productId": "16125",
		"catId": "28",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DELI MUSTARD 1 GALLON",
		"plu_upc": "",
		"price": " $5.85 ",
		"productId": "740",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "HONEY MUSTARD 1/2 GAL",
		"plu_upc": "",
		"price": " $8.00 ",
		"productId": "8738",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "VIDALIA ONIONS 1/2 GAL",
		"plu_upc": "",
		"price": " $16.00 ",
		"productId": "728",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "PUB HORSERADISH SAUCE 1/2 GAL",
		"plu_upc": "",
		"price": " $8.69 ",
		"productId": "8779",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DELI DRESSING FOODSERVICE 32 oz",
		"plu_upc": "",
		"price": " $7.00 ",
		"productId": "16127",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "PEPPERHOUSE GOURMAISE 32 oz",
		"plu_upc": "",
		"price": " $7.50 ",
		"productId": "16136",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "SAUERKRAUT BULK 5 GAL",
		"plu_upc": "",
		"price": " $27.00 ",
		"productId": "16031",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "HAM GLAZE - B.S. & S. 1/2 GAL ",
		"plu_upc": "",
		"price": " $10.00 ",
		"productId": "8784",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "SAVOR CAJUN REMOULADE 1/2 GAL",
		"plu_upc": "",
		"price": " $10.50 ",
		"productId": "447",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "SD TOM PESTO MAYO 1/2 GAL",
		"plu_upc": "",
		"price": " $9.99 ",
		"productId": "448",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "REAL MAYONNAISE",
		"plu_upc": "",
		"price": " $12.50 ",
		"productId": "16058",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "FIREY CHIPOTLE GOURMAISE 32 oz",
		"plu_upc": "",
		"price": " $7.50 ",
		"productId": "16133",
		"catId": "29",
		"uom": "EA"
	},
	{
		"productSize": "250",
		"item": "P.C. MUSTARD .33 oz packets",
		"plu_upc": "",
		"price": " $15.30 ",
		"productId": "743",
		"catId": "30",
		"uom": "CS"
	},
	{
		"productSize": "250",
		"item": "P.C. HONEY MUSTARD .33 oz",
		"plu_upc": "",
		"price": " $15.30 ",
		"productId": "737",
		"catId": "30",
		"uom": "CS"
	},
	{
		"productSize": "250",
		"item": "P.C. PUB HORSERD .33 oz",
		"plu_upc": "",
		"price": " $15.30 ",
		"productId": "785",
		"catId": "30",
		"uom": "CS"
	},
	{
		"productSize": "246",
		"item": "P.C. PEPPERHOUSE MAYO .43oz",
		"plu_upc": "",
		"price": " $28.00 ",
		"productId": "16150",
		"catId": "30",
		"uom": "CS"
	},
	{
		"productSize": "246",
		"item": "P.C. REAL MAYONNAISE 12 g / .43 oz",
		"plu_upc": "",
		"price": " $21.50 ",
		"productId": "16086",
		"catId": "30",
		"uom": "CS"
	},
	{
		"productSize": "5 lb.",
		"item": "SLICED AMERICAN YEL 120 ct",
		"plu_upc": "",
		"price": " $3.55 ",
		"productId": "645",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "5 lb.",
		"item": "SLICED AMERICAN WHITE 120 ct",
		"plu_upc": "",
		"price": " $3.55 ",
		"productId": "646",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "5 lb.",
		"item": "SLICED AMERICAN Y160",
		"plu_upc": "",
		"price": " $3.30 ",
		"productId": "644",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "12-2 lb",
		"item": "PROVOLONE WI FS PRESLICED",
		"plu_upc": "",
		"price": " $4.95 ",
		"productId": "15001",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "12-2 lb",
		"item": "VERMONT CHEDDAR FS PRESLICED",
		"plu_upc": "",
		"price": " $5.40 ",
		"productId": "15002",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "12-2 lb",
		"item": "DOMESTIC WI SWISS FS PRESLICED",
		"plu_upc": "",
		"price": " $5.75 ",
		"productId": "15064",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "12-2 lb",
		"item": "PEPPERJACK FS PRESLICED",
		"plu_upc": "",
		"price": " $5.40 ",
		"productId": "15057",
		"catId": "31",
		"uom": "LB"
	},
	{
		"productSize": "2 / 5 lb",
		"item": "Blue Cheese Crumbled",
		"plu_upc": "",
		"price": " $5.35 ",
		"productId": "15006",
		"catId": "32",
		"uom": "LB"
	},
	{
		"productSize": "2 / 5 lb",
		"item": "Feta Cheese Crumbled",
		"plu_upc": "",
		"price": " $3.80 ",
		"productId": "15007",
		"catId": "32",
		"uom": "LB"
	},
	{
		"productSize": "2 / 5 lb",
		"item": "Gorgonzola Crumbled ",
		"plu_upc": "",
		"price": " $5.35 ",
		"productId": "15008",
		"catId": "32",
		"uom": "LB"
	},
	{
		"productSize": "2/8 lb",
		"item": "SEASONED PRIME RIB ROAST",
		"plu_upc": "",
		"price": " $11.00 ",
		"productId": "444",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "2/8lb",
		"item": "SEASONED TOP ROUND ROAST",
		"plu_upc": "",
		"price": " $6.50 ",
		"productId": "445",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "4/4 lb",
		"item": "SEASONED PORK LOIN ",
		"plu_upc": "",
		"price": " $5.00 ",
		"productId": "11026",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "3/4 lb",
		"item": "FS FC SEASONED TURKEY BREAST ",
		"plu_upc": "",
		"price": " $4.65 ",
		"productId": "300",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "3/7 LB",
		"item": "RTS TURKEY BREAST ",
		"plu_upc": "",
		"price": " $4.20 ",
		"productId": "13024",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "3/5lb. ",
		"item": "PULLED PORK IN BBQ SAUCE",
		"plu_upc": "",
		"price": " $4.60 ",
		"productId": "11050",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "2/10lb.",
		"item": "PORK BREAKFAST SAUSAGE PATTIES",
		"plu_upc": "",
		"price": " $3.60 ",
		"productId": "11034",
		"catId": "33",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CACCIATORINO SALAME - ROPE",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "16094",
		"catId": "34",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CACCIATORINO SAL DOUBLE VP RETAIL",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "16095",
		"catId": "34",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CACCIATORINO SALAMI - ROPE WHITE",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "16096",
		"catId": "34",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "CACCIATORINO SAL - RETAIL WHITE",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "16097",
		"catId": "34",
		"uom": "LB"
	},
	{
		"productSize": "",
		"item": "SOPRESSATA SWT CHUB ROPE 4/STG",
		"plu_upc": "",
		"price": " $6.95 ",
		"productId": "16105",
		"catId": "34",
		"uom": "LB"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "TURKEY W/ WHITE & WILD RICE",
		"plu_upc": "",
		"price": " $33.00 ",
		"productId": "16004",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "CREAM OF BROCCOLI W/ FONTINA",
		"plu_upc": "",
		"price": " $35.00 ",
		"productId": "16005",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "GROUND BEEF CHILI W/ BEANS",
		"plu_upc": "",
		"price": " $42.00 ",
		"productId": "16006",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "CHICKEN NOODLE ",
		"plu_upc": "",
		"price": " $28.00 ",
		"productId": "16008",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "BEEF BARLEY ",
		"plu_upc": "",
		"price": " $29.00 ",
		"productId": "16009",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "MINESTRONE",
		"plu_upc": "",
		"price": " $26.00 ",
		"productId": "16010",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "NEW ENGLAND CLAM CHOWDER",
		"plu_upc": "",
		"price": " $40.00 ",
		"productId": "16011",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "MANHATTAN CLAM CHOWDER",
		"plu_upc": "",
		"price": " $37.00 ",
		"productId": "16012",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "CHICKEN TORTILLA & CHEESE",
		"plu_upc": "",
		"price": " $40.00 ",
		"productId": "16020",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "CHICKEN POT PIE ",
		"plu_upc": "",
		"price": " $33.00 ",
		"productId": "16090",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "TURKEY & RSTD CORN CHOWDER",
		"plu_upc": "",
		"price": " $39.00 ",
		"productId": "16118",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "ITALIAN WEDDING ",
		"plu_upc": "",
		"price": " $28.00 ",
		"productId": "16117",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "PHILLY CHEESESTEAK W/ ANGUS BF",
		"plu_upc": "",
		"price": " $37.00 ",
		"productId": "16126",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "TOMATO BASIL",
		"plu_upc": "",
		"price": " $35.00 ",
		"productId": "16128",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "SPLIT PEA SOUP w/SWT SLICE HAM",
		"plu_upc": "",
		"price": " $26.00 ",
		"productId": "16119",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "2 / 8 lb",
		"item": "BEEF VEGETABLE w SEASOND FILET",
		"plu_upc": "",
		"price": " $43.00 ",
		"productId": "16129",
		"catId": "35",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK BLUE CHEESE STFD ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "3651",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL RP COLO CALAMATA OLIVE ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10372",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP PROVOLINI ANTIPASTI ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10373",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP PITTED JUBILEE ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10377",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP SEA CALAMATA PITD ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10385",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP SEASONED MEDLEY ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10386",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP GREEK FETA SALAD ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10387",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP PITTED GIGANTE ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10388",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP BLUE CHEESE STFD ",
		"plu_upc": "",
		"price": "3.52",
		"productId": "10389",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP PICCANTED GREEN PITTED ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10390",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP GAR & PEPPER ANTIPASTO ",
		"plu_upc": "",
		"price": "3.52",
		"productId": "10391",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL RP GARLIC AGLIO GREEN PITTED ",
		"plu_upc": "",
		"price": "2.93",
		"productId": "10395",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK GARLIC STFD ",
		"plu_upc": "",
		"price": "57.07",
		"productId": "10402",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK JALAPENO STFD OLIVE BRINE ",
		"plu_upc": "",
		"price": "57.07",
		"productId": "10403",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK NICOISE STYLE ",
		"plu_upc": "",
		"price": "44.44",
		"productId": "10481",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "BULK PICHOLINE OLIVES ",
		"plu_upc": "",
		"price": "39.2",
		"productId": "10482",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK QUEEN STF BRINE ",
		"plu_upc": "",
		"price": "58.85",
		"productId": "10485",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ANTIPASTO DELIGHT ",
		"plu_upc": "",
		"price": "39.2",
		"productId": "10491",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PIC GREEN PITD            ",
		"plu_upc": "",
		"price": "45.59",
		"productId": "10506",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ITAL AGLIO PITD           ",
		"plu_upc": "",
		"price": "45.59",
		"productId": "10507",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SEASON MEDLEY             ",
		"plu_upc": "",
		"price": "51.97",
		"productId": "10549",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK COLSL CALAMATA            ",
		"plu_upc": "",
		"price": "49.39",
		"productId": "10551",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK S.SUPREME WHOLE GREEN OLIV",
		"plu_upc": "",
		"price": "39.2",
		"productId": "10552",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PITD GIGANTE              ",
		"plu_upc": "",
		"price": "45.59",
		"productId": "10553",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SEASON OIL CURED          ",
		"plu_upc": "",
		"price": "39.2",
		"productId": "10554",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SEA BLACK GREEK           ",
		"plu_upc": "",
		"price": "50.56",
		"productId": "10556",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK HOT MIX PEPR SALAD        ",
		"plu_upc": "",
		"price": "44.31",
		"productId": "10557",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK MIX OLIVE SALAD           ",
		"plu_upc": "",
		"price": "51.97",
		"productId": "10558",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SC CALABRESE              ",
		"plu_upc": "",
		"price": "43.03",
		"productId": "10560",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "BULK SEAS PITD CALAMATA            ",
		"plu_upc": "",
		"price": "51.74",
		"productId": "10566",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL GRN BELLA DI CERIGNOLA OLIVES  ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "10571",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SIC MAR MIX W/GARLIC      ",
		"plu_upc": "",
		"price": "51.97",
		"productId": "10572",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ASIAGO STFD OLIVES        ",
		"plu_upc": "",
		"price": "68.68",
		"productId": "10574",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SWEET HEARTS SALAD        ",
		"plu_upc": "",
		"price": "55.67",
		"productId": "10579",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK FRENCH STYLE MEDLEY       ",
		"plu_upc": "",
		"price": "48.14",
		"productId": "10590",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PITD JUBILEE              ",
		"plu_upc": "",
		"price": "59.98",
		"productId": "10601",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL SPANISH TAPAS                  ",
		"plu_upc": "",
		"price": "48",
		"productId": "10602",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK CASTELVETRANO             ",
		"plu_upc": "",
		"price": "47.67",
		"productId": "10842",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK HOT GARDEN ITAL           ",
		"plu_upc": "",
		"price": "39.25",
		"productId": "10886",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK MED MUSH SALAD            ",
		"plu_upc": "",
		"price": "28.6",
		"productId": "12709",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK SWT MART ONION            ",
		"plu_upc": "",
		"price": "34.25",
		"productId": "12714",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ROASTED GARLIC ANTIPASTI  ",
		"plu_upc": "",
		"price": "55.92",
		"productId": "12715",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK GARL & PEPPER ANTIPASTO   ",
		"plu_upc": "",
		"price": "58.47",
		"productId": "12718",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "BULK ARTICHOKES ROYAL              ",
		"plu_upc": "",
		"price": "57.2",
		"productId": "12723",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK GREEK FETA SALAD          ",
		"plu_upc": "",
		"price": "46.99",
		"productId": "12734",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK CURLY PEPPERS             ",
		"plu_upc": "",
		"price": "50.82",
		"productId": "12742",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PROVOLINI ANTIPASTI       ",
		"plu_upc": "",
		"price": "50.79",
		"productId": "12769",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL OMAR GRAPE LEAVES CAN          ",
		"plu_upc": "",
		"price": "13.68",
		"productId": "12787",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK ROMAN ARTICHOKES          ",
		"plu_upc": "",
		"price": "65.86",
		"productId": "13745",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK MUFFALATTA ANTIPASTO      ",
		"plu_upc": "",
		"price": "43.16",
		"productId": "13761",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS PITTED GIGANTE             ",
		"plu_upc": "",
		"price": "20.13",
		"productId": "14570",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS PICANTE GRN PITTED         ",
		"plu_upc": "",
		"price": "22.02",
		"productId": "14571",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK MIXED BELLA DI CERIGNOLA  ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17040",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ALMOND STFD OLIVES        ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17043",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK BLKBELLA DI CERIGNOLA OLIV",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17045",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK REDBELLA DI CERIGNOLA OLIV",
		"plu_upc": "",
		"price": "71.74",
		"productId": "17046",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK GORG STFD OLIVES          ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17809",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK FETA STUFFED              ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17810",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PROVOLONE STFD OLIVES     ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17811",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK SD TOMATO STFD            ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "17812",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK ANCHOVY STFD OLIVES       ",
		"plu_upc": "",
		"price": "64.68",
		"productId": "18067",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK HOT PITED OLIVE SALAD     ",
		"plu_upc": "",
		"price": "50.56",
		"productId": "35021",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL CROSTINI SESAME                ",
		"plu_upc": "",
		"price": "17.53",
		"productId": "35801",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL CROSTINI ORIGINAL              ",
		"plu_upc": "",
		"price": "17.53",
		"productId": "35802",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL CROSTINI BLACK                 ",
		"plu_upc": "",
		"price": "17.53",
		"productId": "35803",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL CrostinO<-- ORIGINAL           ",
		"plu_upc": "",
		"price": "10.53",
		"productId": "35805",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "HOLIDAY OLIVE TRAY                 ",
		"plu_upc": "",
		"price": "11.69",
		"productId": "50240",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK TERIYAKI MUSHROOMS        ",
		"plu_upc": "",
		"price": "31.91",
		"productId": "60092",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK SM GAR MUSHROOMS          ",
		"plu_upc": "",
		"price": "31.91",
		"productId": "60093",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK STFD BANANA PEP W/PROSCIUT",
		"plu_upc": "",
		"price": "95.86",
		"productId": "68010",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK RSTD PIQUILLO PEPPERS     ",
		"plu_upc": "",
		"price": "14.1",
		"productId": "70084",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK PEPPERAZZI                ",
		"plu_upc": "",
		"price": "21.39",
		"productId": "70104",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK ARTICHOKE QTRS CAN        ",
		"plu_upc": "",
		"price": "15.47",
		"productId": "96144",
		"catId": "36",
		"uom": "EA"
	},
	{
		"productSize": "",
		"item": "DEL BULK OIL CURED PITTED OLIVES   ",
		"plu_upc": "",
		"price": "45.59",
		"productId": "110561",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK CIPOL ONIONS              ",
		"plu_upc": "",
		"price": "56.68",
		"productId": "112789",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK GARLIC FIESTA             ",
		"plu_upc": "",
		"price": "55.92",
		"productId": "127224",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK WHOLE FRESH GARLIC        ",
		"plu_upc": "",
		"price": "63",
		"productId": "127226",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK MRNTD SD TOMATOS          ",
		"plu_upc": "",
		"price": "52.86",
		"productId": "142929",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS ANTIPASTO DELIGHT          ",
		"plu_upc": "",
		"price": "21.95",
		"productId": "500491",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS GAR & PEPPERS              ",
		"plu_upc": "",
		"price": "31.59",
		"productId": "502718",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS GREEK FETA SALAD           ",
		"plu_upc": "",
		"price": "25.85",
		"productId": "502734",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS SEASONED MEDLEY            ",
		"plu_upc": "",
		"price": "28.34",
		"productId": "510549",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS COLSL CALAMATA             ",
		"plu_upc": "",
		"price": "27.05",
		"productId": "510551",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS SEA BLACK GREEK            ",
		"plu_upc": "",
		"price": "27.64",
		"productId": "510556",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS PITD SEA CALAMATA          ",
		"plu_upc": "",
		"price": "28.22",
		"productId": "510566",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL PPS PROVOLONI ANTIPASI         ",
		"plu_upc": "",
		"price": "28.34",
		"productId": "512769",
		"catId": "36",
		"uom": "CS"
	},
	{
		"productSize": "",
		"item": "DEL BULK PEPPADEW SWT PIQUANTE PEPP",
		"plu_upc": "",
		"price": "21.94",
		"productId": "600237",
		"catId": "36",
		"uom": "EA"
	}
]

convert(products)

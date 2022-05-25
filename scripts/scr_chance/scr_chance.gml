/// @description scr_chance()
function scr_chance() {
	var percent = argument[0];              // nulty argument
	percent     = clamp(percent, 0, 100);   // nikdy nebude menej ako 0 a viac ako 100    
	return (random(100) < percent);         // ak je nahodne cislo mensie ako percent vrati TRUE



}

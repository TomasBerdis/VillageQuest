/// @description scr_get_words
function scr_get_words(argument0, argument1, argument2) {
	var str     = argument0;                            // nulty argument
	var index   = argument1;                            // prvy argument
	var count   = ceil(argument2);                      // druhy argument (zaokruhleny nahor)

	var char = string_char_at(str, count);              // do premennej char sa zapise aktualny znak zo Stringu
	while(char != " " && char != "")                    // pokial sa znak nerovna medzere alebo nicomu
	{
	    count++;                                        // inkrementuje count
	    char = string_char_at(str, count);              // do premennej char sa zapise dalsi znak zo Stringu
	}

	var return_str = string_copy(str, index, count);    // zapise sa "str" so zaciatkom v "index" a koncom v "count"
	return return_str;                                  // script (metoda) vrati string



}

if(!instance_exists(dialog))
{
    dialog = instance_create(x+xoffset, y+yoffset, obj_dialog);
    dialog.text = text;
} else
{
    dialog.text_page++;
    dialog.text_count = 0;
    if(dialog.text_page > array_length_1d(dialog.text)-1)
    {
        with(dialog)
        {
            instance_destroy();
        }
    }
}


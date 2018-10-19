MEMORY
{
	RAM(rwx) : o = 0x200 , l = 0x1000
}
SECTIONS
{
	.ro :
	{
		*(first)
		add.o(.data)
		sub.o(.text .data)
		add.o(.text)
		*(.text)
	} > RAM

	.rw :
	{
		*(.data)
		*(.bss)
	} > RAM
}

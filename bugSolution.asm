mov ecx, [some_ecx_size_limit]
mov eax, [ebx+ecx*4] ; check for ecx limit
mov [edi+eax*1], 0 ; still potential overflow here, needs more thorough checks
;more robust solution with explicit bounds checking:
mov ecx, [some_ecx_size_limit]
cmp ecx, 100 ;example limit
jg overflow_handler
mov eax, [ebx+ecx*4]
mov edx, [some_edi_size_limit]
cmp eax, edx
jg overflow_handler
mov [edi+eax*1], 0
jmp end
overflow_handler:
;handle overflow
end:
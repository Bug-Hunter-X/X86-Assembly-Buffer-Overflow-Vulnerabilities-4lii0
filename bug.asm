mov eax, [ebx+ecx*4] ; potential buffer overflow if ecx is too large
mov [edi+eax*1], 0 ; potential buffer overflow if eax is too large
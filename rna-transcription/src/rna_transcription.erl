-module(rna_transcription).

-export([to_rna/1]).


to_rna([$G|T]) -> [$C|to_rna(T)];
to_rna([$C|T]) -> [$G|to_rna(T)];
to_rna([$T|T]) -> [$A|to_rna(T)];
to_rna([$A|T]) -> [$U|to_rna(T)];
to_rna([]) -> [].

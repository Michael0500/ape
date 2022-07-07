cd ape
REM rm -rf *.o ..\*.exe
rm ..\ape_test.exe
REM gcc -c ape.c ast.c builtins.c code.c collections.c common.c compilation_scope.c compiled_file.c compiler.c errors.c frame.c gc.c global_store.c lexer.c object.c optimisation.c parser.c symbol_table.c token.c traceback.c vm.c
gcc -c ..\ape_test.c -o ..\ape_test.o
gcc ..\ape_test.o ape.o ast.o builtins.o code.o collections.o common.o compilation_scope.o compiled_file.o compiler.o errors.o frame.o gc.o global_store.o lexer.o object.o optimisation.o parser.o symbol_table.o token.o traceback.o vm.o -o ..\ape_test.exe
cd ..
ape_test.exe test.ape

OBJ = ape.o ast.o builtins.o code.o collections.o common.o compilation_scope.o compiled_file.o compiler.o errors.o frame.o gc.o global_store.o lexer.o object.o optimisation.o parser.o symbol_table.o token.o traceback.o vm.o

ape:
    gcc $(OBJ) -o ape.exe

compile:
    gcc -c ape.c ast.c builtins.c code.c collections.c common.c compilation_scope.c compiled_file.c compiler.c errors.c frame.c gc.c global_store.c lexer.c object.c optimisation.c parser.c symbol_table.c token.c traceback.c vm.c

clean:
	rm -rf *.o ape.exe

ape.o:
	gcc -c ape.c

ast.o:
	gcc -c ast.c

builtins.o:
	gcc -c builtins.c

code.o:
	gcc -c code.c

collections.o:
	gcc -c collections.c

common.o:
	gcc -c common.c

compilation_scope.o:
	gcc -c compilation_scope.c

compiled_file.o:
	gcc -c compiled_file.c

compiler.o:
	gcc -c compiler.c

errors.o:
	gcc -c errors.c

frame.o:
	gcc -c frame.c

gc.o:
	gcc -c gc.c

global_store.o:
	gcc -c global_store.c

lexer.o:
	gcc -c lexer.c

object.o:
	gcc -c object.c

optimisation.o:
	gcc -c optimisation.c

parser.o:
	gcc -c parser.c

symbol_table.o:
	gcc -c symbol_table.c

token.o:
	gcc -c token.c

traceback.o:
	gcc -c traceback.c

vm.o:
	gcc -c vm.c

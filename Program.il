.assembly extern System.Runtime {
    .ver 8:0:0:0
    .publickeytoken = (b03f5f7f11d50a3a)
}

.assembly extern System.Console {
    .ver 8:0:0:0
    .publickeytoken = (b03f5f7f11d50a3a)
}

.assembly UnsafeRefTest {
    .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = (
        01 00 18 2e 4e 45 54 43 6f 72 65 41 70 70 2c 56
        65 72 73 69 6f 6e 3d 76 38 2e 30 01 00 54 0e 14
        46 72 61 6d 65 77 6f 72 6b 44 69 73 70 6c 61 79
        4e 61 6d 65 08 2e 4e 45 54 20 38 2e 30
    )
}

.class private UnsafeRefTest.Program
    extends [System.Runtime]System.Object
{
    .method private hidebysig static void Main () cil managed
    {
        .maxstack 1
        .entrypoint
        
        .locals ([0] int32&)
        
        call int32& UnsafeRefTest.Program::Foo()
        stloc.0

        call int32& UnsafeRefTest.Program::Bar()
        ldobj int32
        call void [System.Console]System.Console::WriteLine(int32)
        
        call int32& UnsafeRefTest.Program::Bar()
        ldobj int32
        call void [System.Console]System.Console::WriteLine(int32)
        
        call int32& UnsafeRefTest.Program::Bar()
        ldobj int32
        call void [System.Console]System.Console::WriteLine(int32)
        
        call int32& UnsafeRefTest.Program::Bar()
        ldobj int32
        call void [System.Console]System.Console::WriteLine(int32)

        ldstr "--------------------------"
        call void [System.Console]System.Console::WriteLine(string)

        ldloc.0
        ldobj int32
        call void [System.Console]System.Console::WriteLine(int32)

        ret
    }
    
    .method private hidebysig static int32& Foo() cil managed
    {
        .maxstack 1

        .locals ([0] int32 x)

        ldc.i4.2
        stloc 0

        ldloca.s 0
        ret
    }
    
    .method private hidebysig static int32& Bar() cil managed
    {
        .maxstack 1

        .locals ([0] int32 x)

        ldc.i4.4
        stloc 0

        ldloca.s 0
        ret
    }
}
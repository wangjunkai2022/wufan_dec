package com.android.dx.cf.code;

import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes2.dex */
public class Simulator {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String LOCAL_MISMATCH_ERROR = "This is symptomatic of .class transformation tools that ignore local variable information.";
    private final BytecodeArray code;
    private final DexOptions dexOptions;
    private final LocalVariableList localVariables;
    private final Machine machine;
    private ConcreteMethod method;
    private final SimVisitor visitor;

    /* loaded from: classes2.dex */
    private class SimVisitor implements BytecodeArray.Visitor {
        private Frame frame = null;
        private final Machine machine;
        private int previousOffset;

        public SimVisitor() {
            this.machine = Simulator.this.machine;
        }

        private void checkReturnType(Type type) {
            Type returnType = this.machine.getPrototype().getReturnType();
            if (Merger.isPossiblyAssignableFrom(returnType, type)) {
                return;
            }
            Simulator simulator = Simulator.this;
            simulator.fail("return type mismatch: prototype indicates " + returnType.toHuman() + ", but encountered type " + type.toHuman());
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public int getPreviousOffset() {
            return this.previousOffset;
        }

        public void setFrame(Frame frame) {
            Objects.requireNonNull(frame, "frame == null");
            this.frame = frame;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void setPreviousOffset(int i2) {
            this.previousOffset = i2;
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitBranch(int i2, int i4, int i5, int i6) {
            switch (i2) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                    this.machine.popArgs(this.frame, Type.INT);
                    break;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                    Machine machine = this.machine;
                    Frame frame = this.frame;
                    Type type = Type.INT;
                    machine.popArgs(frame, type, type);
                    break;
                case 165:
                case 166:
                    Machine machine2 = this.machine;
                    Frame frame2 = this.frame;
                    Type type2 = Type.OBJECT;
                    machine2.popArgs(frame2, type2, type2);
                    break;
                default:
                    switch (i2) {
                        case 198:
                        case 199:
                            this.machine.popArgs(this.frame, Type.OBJECT);
                            break;
                        case 200:
                        case 201:
                            break;
                        default:
                            visitInvalid(i2, i4, i5);
                            return;
                    }
                case 167:
                case 168:
                    this.machine.clearArgs();
                    break;
            }
            this.machine.auxTargetArg(i6);
            this.machine.run(this.frame, i4, i2);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitConstant(int i2, int i4, int i5, Constant constant, int i6) {
            CstCallSiteRef cstCallSiteRef;
            if (i2 == 18 || i2 == 19) {
                if ((constant instanceof CstMethodHandle) || (constant instanceof CstProtoRef)) {
                    Simulator.this.checkConstMethodHandleSupported(constant);
                }
                this.machine.clearArgs();
                cstCallSiteRef = constant;
            } else if (i2 == 189) {
                this.machine.popArgs(this.frame, Type.INT);
                cstCallSiteRef = constant;
            } else if (i2 != 197) {
                if (i2 != 192 && i2 != 193) {
                    switch (i2) {
                        case 179:
                            this.machine.popArgs(this.frame, ((CstFieldRef) constant).getType());
                            cstCallSiteRef = constant;
                            break;
                        case 180:
                            break;
                        case 181:
                            this.machine.popArgs(this.frame, Type.OBJECT, ((CstFieldRef) constant).getType());
                            cstCallSiteRef = constant;
                            break;
                        case 182:
                        case 183:
                        case 184:
                        case 185:
                            boolean z3 = constant instanceof CstInterfaceMethodRef;
                            CstMethodRef cstMethodRef = constant;
                            if (z3) {
                                CstMethodRef methodRef = ((CstInterfaceMethodRef) constant).toMethodRef();
                                Simulator.this.checkInvokeInterfaceSupported(i2, methodRef);
                                cstMethodRef = methodRef;
                            }
                            if ((cstMethodRef instanceof CstMethodRef) && ((CstMethodRef) cstMethodRef).isSignaturePolymorphic()) {
                                Simulator.this.checkInvokeSignaturePolymorphic(i2);
                            }
                            this.machine.popArgs(this.frame, ((CstMethodRef) cstMethodRef).getPrototype(i2 == 184));
                            cstCallSiteRef = cstMethodRef;
                            break;
                        case 186:
                            Simulator.this.checkInvokeDynamicSupported(i2);
                            CstInvokeDynamic cstInvokeDynamic = (CstInvokeDynamic) constant;
                            this.machine.popArgs(this.frame, cstInvokeDynamic.getPrototype());
                            cstCallSiteRef = cstInvokeDynamic.addReference();
                            break;
                        default:
                            this.machine.clearArgs();
                            cstCallSiteRef = constant;
                            break;
                    }
                }
                this.machine.popArgs(this.frame, Type.OBJECT);
                cstCallSiteRef = constant;
            } else {
                this.machine.popArgs(this.frame, Prototype.internInts(Type.VOID, i6));
                cstCallSiteRef = constant;
            }
            this.machine.auxIntArg(i6);
            this.machine.auxCstArg(cstCallSiteRef);
            this.machine.run(this.frame, i4, i2);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitInvalid(int i2, int i4, int i5) {
            throw new SimException("invalid opcode " + Hex.u1(i2));
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitLocal(int i2, int i4, int i5, int i6, Type type, int i7) {
            Type type2;
            LocalItem localItem;
            LocalVariableList.Item pcAndIndexToLocal = Simulator.this.localVariables.pcAndIndexToLocal(i2 == 54 ? i4 + i5 : i4, i6);
            if (pcAndIndexToLocal != null) {
                type2 = pcAndIndexToLocal.getType();
                if (type2.getBasicFrameType() != type.getBasicFrameType()) {
                    type2 = type;
                    pcAndIndexToLocal = null;
                }
            } else {
                type2 = type;
            }
            if (i2 != 21) {
                if (i2 == 54) {
                    localItem = pcAndIndexToLocal != null ? pcAndIndexToLocal.getLocalItem() : null;
                    this.machine.popArgs(this.frame, type);
                    this.machine.auxType(type);
                    this.machine.localTarget(i6, type2, localItem);
                } else if (i2 == 132) {
                    localItem = pcAndIndexToLocal != null ? pcAndIndexToLocal.getLocalItem() : null;
                    this.machine.localArg(this.frame, i6);
                    this.machine.localTarget(i6, type2, localItem);
                    this.machine.auxType(type);
                    this.machine.auxIntArg(i7);
                    this.machine.auxCstArg(CstInteger.make(i7));
                } else if (i2 != 169) {
                    visitInvalid(i2, i4, i5);
                    return;
                }
                this.machine.run(this.frame, i4, i2);
            }
            this.machine.localArg(this.frame, i6);
            this.machine.localInfo(pcAndIndexToLocal != null);
            this.machine.auxType(type);
            this.machine.run(this.frame, i4, i2);
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitNewarray(int i2, int i4, CstType cstType, ArrayList<Constant> arrayList) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxInitValues(arrayList);
            this.machine.auxCstArg(cstType);
            this.machine.run(this.frame, i2, 188);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:116:0x02b8  */
        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void visitNoArgs(int r9, int r10, int r11, com.android.dx.rop.type.Type r12) {
            /*
                Method dump skipped, instructions count: 1000
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.dx.cf.code.Simulator.SimVisitor.visitNoArgs(int, int, int, com.android.dx.rop.type.Type):void");
        }

        @Override // com.android.dx.cf.code.BytecodeArray.Visitor
        public void visitSwitch(int i2, int i4, int i5, SwitchList switchList, int i6) {
            this.machine.popArgs(this.frame, Type.INT);
            this.machine.auxIntArg(i6);
            this.machine.auxSwitchArg(switchList);
            this.machine.run(this.frame, i4, i2);
        }
    }

    public Simulator(Machine machine, ConcreteMethod concreteMethod, DexOptions dexOptions) {
        Objects.requireNonNull(machine, "machine == null");
        Objects.requireNonNull(concreteMethod, "method == null");
        Objects.requireNonNull(dexOptions, "dexOptions == null");
        this.machine = machine;
        this.code = concreteMethod.getCode();
        this.method = concreteMethod;
        this.localVariables = concreteMethod.getLocalVariables();
        this.visitor = new SimVisitor();
        this.dexOptions = dexOptions;
        if (concreteMethod.isDefaultOrStaticInterfaceMethod()) {
            checkInterfaceMethodDeclaration(concreteMethod);
        }
    }

    static /* synthetic */ SimException access$100() {
        return illegalTos();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkConstMethodHandleSupported(Constant constant) throws SimException {
        if (this.dexOptions.apiIsSupported(28)) {
            return;
        }
        fail(String.format("invalid constant type %s requires --min-sdk-version >= %d (currently %d)", constant.typeName(), 28, Integer.valueOf(this.dexOptions.minSdkVersion)));
    }

    private void checkInterfaceMethodDeclaration(ConcreteMethod concreteMethod) {
        if (this.dexOptions.apiIsSupported(24)) {
            return;
        }
        Object[] objArr = new Object[5];
        objArr[0] = concreteMethod.isStaticMethod() ? "static" : "default";
        objArr[1] = 24;
        objArr[2] = Integer.valueOf(this.dexOptions.minSdkVersion);
        objArr[3] = concreteMethod.getDefiningClass().toHuman();
        objArr[4] = concreteMethod.getNat().toHuman();
        warn(String.format("defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s", objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeDynamicSupported(int i2) throws SimException {
        if (this.dexOptions.apiIsSupported(26)) {
            return;
        }
        fail(String.format("invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)", Integer.valueOf(i2), 26, Integer.valueOf(this.dexOptions.minSdkVersion)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeInterfaceSupported(int i2, CstMethodRef cstMethodRef) {
        if (i2 == 185 || this.dexOptions.apiIsSupported(24)) {
            return;
        }
        DexOptions dexOptions = this.dexOptions;
        boolean z3 = dexOptions.allowAllInterfaceMethodInvokes;
        if (i2 == 184) {
            z3 &= dexOptions.apiIsSupported(21);
        }
        String str = i2 == 184 ? "static" : "default";
        if (z3) {
            warn(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)", str, cstMethodRef.getDefiningClass().toHuman(), cstMethodRef.getNat().toHuman(), 24, Integer.valueOf(this.dexOptions.minSdkVersion)));
        } else {
            fail(String.format("invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)", str, cstMethodRef.getDefiningClass().toHuman(), cstMethodRef.getNat().toHuman(), 24, Integer.valueOf(this.dexOptions.minSdkVersion)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInvokeSignaturePolymorphic(int i2) {
        if (!this.dexOptions.apiIsSupported(26)) {
            fail(String.format("invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)", 26, Integer.valueOf(this.dexOptions.minSdkVersion)));
        } else if (i2 != 182) {
            fail("Unsupported signature polymorphic invocation (" + ByteOps.opName(i2) + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(String str) {
        throw new SimException(String.format("ERROR in %s.%s: %s", this.method.getDefiningClass().toHuman(), this.method.getNat().toHuman(), str));
    }

    private static SimException illegalTos() {
        return new SimException("stack mismatch: illegal top-of-stack for opcode");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type requiredArrayTypeFor(Type type, Type type2) {
        Type type3;
        Type type4 = Type.KNOWN_NULL;
        return type2 == type4 ? type.isReference() ? type4 : type.getArrayType() : (type == Type.OBJECT && type2.isArray() && type2.getComponentType().isReference()) ? type2 : (type == Type.BYTE && type2 == (type3 = Type.BOOLEAN_ARRAY)) ? type3 : type.getArrayType();
    }

    private void warn(String str) {
        this.dexOptions.err.println(String.format("WARNING in %s.%s: %s", this.method.getDefiningClass().toHuman(), this.method.getNat().toHuman(), str));
    }

    public void simulate(ByteBlock byteBlock, Frame frame) {
        int end = byteBlock.getEnd();
        this.visitor.setFrame(frame);
        try {
            int start = byteBlock.getStart();
            while (start < end) {
                int parseInstruction = this.code.parseInstruction(start, this.visitor);
                this.visitor.setPreviousOffset(start);
                start += parseInstruction;
            }
        } catch (SimException e4) {
            frame.annotate(e4);
            throw e4;
        }
    }

    public int simulate(int i2, Frame frame) {
        this.visitor.setFrame(frame);
        return this.code.parseInstruction(i2, this.visitor);
    }
}

package com.android.dx.cf.direct;

import com.android.dx.cf.attrib.AttAnnotationDefault;
import com.android.dx.cf.attrib.AttBootstrapMethods;
import com.android.dx.cf.attrib.AttCode;
import com.android.dx.cf.attrib.AttConstantValue;
import com.android.dx.cf.attrib.AttDeprecated;
import com.android.dx.cf.attrib.AttEnclosingMethod;
import com.android.dx.cf.attrib.AttExceptions;
import com.android.dx.cf.attrib.AttInnerClasses;
import com.android.dx.cf.attrib.AttLineNumberTable;
import com.android.dx.cf.attrib.AttLocalVariableTable;
import com.android.dx.cf.attrib.AttLocalVariableTypeTable;
import com.android.dx.cf.attrib.AttRuntimeInvisibleAnnotations;
import com.android.dx.cf.attrib.AttRuntimeInvisibleParameterAnnotations;
import com.android.dx.cf.attrib.AttRuntimeVisibleAnnotations;
import com.android.dx.cf.attrib.AttRuntimeVisibleParameterAnnotations;
import com.android.dx.cf.attrib.AttSignature;
import com.android.dx.cf.attrib.AttSourceDebugExtension;
import com.android.dx.cf.attrib.AttSourceFile;
import com.android.dx.cf.attrib.AttSynthetic;
import com.android.dx.cf.attrib.InnerClassList;
import com.android.dx.cf.code.BootstrapMethodArgumentsList;
import com.android.dx.cf.code.BootstrapMethodsList;
import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.code.LineNumberList;
import com.android.dx.cf.code.LocalVariableList;
import com.android.dx.cf.iface.Attribute;
import com.android.dx.cf.iface.ParseException;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.cf.iface.StdAttributeList;
import com.android.dx.rop.annotation.AnnotationVisibility;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.io.IOException;
/* loaded from: classes2.dex */
public class StdAttributeFactory extends AttributeFactory {
    public static final StdAttributeFactory THE_ONE = new StdAttributeFactory();

    private Attribute annotationDefault(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            throwSeverelyTruncated();
        }
        return new AttAnnotationDefault(new AnnotationParser(directClassFile, i2, i4, parseObserver).parseValueAttribute(), i4);
    }

    private Attribute bootstrapMethods(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "num_boostrap_methods: " + Hex.u2(unsignedShort));
        }
        return new AttBootstrapMethods(parseBootstrapMethods(bytes, directClassFile.getConstantPool(), directClassFile.getThisClass(), unsignedShort, i2 + 2, i4 - 2, parseObserver));
    }

    private Attribute code(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 12) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        int unsignedShort = bytes.getUnsignedShort(i2);
        int i5 = i2 + 2;
        int unsignedShort2 = bytes.getUnsignedShort(i5);
        int i6 = i2 + 4;
        int i7 = bytes.getInt(i6);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "max_stack: " + Hex.u2(unsignedShort));
            parseObserver.parsed(bytes, i5, 2, "max_locals: " + Hex.u2(unsignedShort2));
            parseObserver.parsed(bytes, i6, 4, "code_length: " + Hex.u4(i7));
        }
        int i8 = i2 + 8;
        int i9 = i4 - 8;
        if (i9 < i7 + 4) {
            return throwTruncated();
        }
        int i10 = i8 + i7;
        int i11 = i9 - i7;
        BytecodeArray bytecodeArray = new BytecodeArray(bytes.slice(i8, i10), constantPool);
        if (parseObserver != null) {
            bytecodeArray.forEach(new CodeObserver(bytecodeArray.getBytes(), parseObserver));
        }
        int unsignedShort3 = bytes.getUnsignedShort(i10);
        ByteCatchList byteCatchList = unsignedShort3 == 0 ? ByteCatchList.EMPTY : new ByteCatchList(unsignedShort3);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i10, 2, "exception_table_length: " + Hex.u2(unsignedShort3));
        }
        int i12 = i10 + 2;
        int i13 = i11 - 2;
        if (i13 < (unsignedShort3 * 8) + 2) {
            return throwTruncated();
        }
        for (int i14 = 0; i14 < unsignedShort3; i14++) {
            if (parseObserver != null) {
                parseObserver.changeIndent(1);
            }
            int unsignedShort4 = bytes.getUnsignedShort(i12);
            int unsignedShort5 = bytes.getUnsignedShort(i12 + 2);
            int unsignedShort6 = bytes.getUnsignedShort(i12 + 4);
            CstType cstType = (CstType) constantPool.get0Ok(bytes.getUnsignedShort(i12 + 6));
            byteCatchList.set(i14, unsignedShort4, unsignedShort5, unsignedShort6, cstType);
            if (parseObserver != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(Hex.u2(unsignedShort4));
                sb.append("..");
                sb.append(Hex.u2(unsignedShort5));
                sb.append(" -> ");
                sb.append(Hex.u2(unsignedShort6));
                sb.append(" ");
                sb.append(cstType == null ? "<any>" : cstType.toHuman());
                parseObserver.parsed(bytes, i12, 8, sb.toString());
            }
            i12 += 8;
            i13 -= 8;
            if (parseObserver != null) {
                parseObserver.changeIndent(-1);
            }
        }
        byteCatchList.setImmutable();
        AttributeListParser attributeListParser = new AttributeListParser(directClassFile, 3, i12, this);
        attributeListParser.setObserver(parseObserver);
        StdAttributeList list = attributeListParser.getList();
        list.setImmutable();
        int endOffset = attributeListParser.getEndOffset() - i12;
        if (endOffset != i13) {
            return throwBadLength(endOffset + (i12 - i2));
        }
        return new AttCode(unsignedShort, unsignedShort2, bytecodeArray, byteCatchList, list);
    }

    private Attribute constantValue(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 2) {
            return throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        TypedConstant typedConstant = (TypedConstant) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i2));
        AttConstantValue attConstantValue = new AttConstantValue(typedConstant);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "value: " + typedConstant);
        }
        return attConstantValue;
    }

    private Attribute deprecated(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 0) {
            return throwBadLength(0);
        }
        return new AttDeprecated();
    }

    private Attribute enclosingMethod(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 4) {
            throwBadLength(4);
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        CstType cstType = (CstType) constantPool.get(bytes.getUnsignedShort(i2));
        int i5 = i2 + 2;
        CstNat cstNat = (CstNat) constantPool.get0Ok(bytes.getUnsignedShort(i5));
        AttEnclosingMethod attEnclosingMethod = new AttEnclosingMethod(cstType, cstNat);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "class: " + cstType);
            parseObserver.parsed(bytes, i5, 2, "method: " + DirectClassFile.stringOrNone(cstNat));
        }
        return attEnclosingMethod;
    }

    private Attribute exceptions(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "number_of_exceptions: " + Hex.u2(unsignedShort));
        }
        int i5 = i2 + 2;
        int i6 = unsignedShort * 2;
        if (i4 - 2 != i6) {
            throwBadLength(i6 + 2);
        }
        return new AttExceptions(directClassFile.makeTypeList(i5, unsignedShort));
    }

    private Attribute innerClasses(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        ConstantPool constantPool = directClassFile.getConstantPool();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "number_of_classes: " + Hex.u2(unsignedShort));
        }
        int i5 = i2 + 2;
        int i6 = unsignedShort * 8;
        if (i4 - 2 != i6) {
            throwBadLength(i6 + 2);
        }
        InnerClassList innerClassList = new InnerClassList(unsignedShort);
        for (int i7 = 0; i7 < unsignedShort; i7++) {
            int unsignedShort2 = bytes.getUnsignedShort(i5);
            int i8 = i5 + 2;
            int unsignedShort3 = bytes.getUnsignedShort(i8);
            int i9 = i5 + 4;
            int unsignedShort4 = bytes.getUnsignedShort(i9);
            int i10 = i5 + 6;
            int unsignedShort5 = bytes.getUnsignedShort(i10);
            CstType cstType = (CstType) constantPool.get(unsignedShort2);
            CstType cstType2 = (CstType) constantPool.get0Ok(unsignedShort3);
            CstString cstString = (CstString) constantPool.get0Ok(unsignedShort4);
            innerClassList.set(i7, cstType, cstType2, cstString, unsignedShort5);
            if (parseObserver != null) {
                parseObserver.parsed(bytes, i5, 2, "inner_class: " + DirectClassFile.stringOrNone(cstType));
                parseObserver.parsed(bytes, i8, 2, "  outer_class: " + DirectClassFile.stringOrNone(cstType2));
                parseObserver.parsed(bytes, i9, 2, "  name: " + DirectClassFile.stringOrNone(cstString));
                parseObserver.parsed(bytes, i10, 2, "  access_flags: " + AccessFlags.innerClassString(unsignedShort5));
            }
            i5 += 8;
        }
        innerClassList.setImmutable();
        return new AttInnerClasses(innerClassList);
    }

    private Attribute lineNumberTable(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "line_number_table_length: " + Hex.u2(unsignedShort));
        }
        int i5 = i2 + 2;
        int i6 = unsignedShort * 4;
        if (i4 - 2 != i6) {
            throwBadLength(i6 + 2);
        }
        LineNumberList lineNumberList = new LineNumberList(unsignedShort);
        for (int i7 = 0; i7 < unsignedShort; i7++) {
            int unsignedShort2 = bytes.getUnsignedShort(i5);
            int unsignedShort3 = bytes.getUnsignedShort(i5 + 2);
            lineNumberList.set(i7, unsignedShort2, unsignedShort3);
            if (parseObserver != null) {
                parseObserver.parsed(bytes, i5, 4, Hex.u2(unsignedShort2) + " " + unsignedShort3);
            }
            i5 += 4;
        }
        lineNumberList.setImmutable();
        return new AttLineNumberTable(lineNumberList);
    }

    private Attribute localVariableTable(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "local_variable_table_length: " + Hex.u2(unsignedShort));
        }
        return new AttLocalVariableTable(parseLocalVariables(bytes.slice(i2 + 2, i2 + i4), directClassFile.getConstantPool(), parseObserver, unsignedShort, false));
    }

    private Attribute localVariableTypeTable(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            return throwSeverelyTruncated();
        }
        ByteArray bytes = directClassFile.getBytes();
        int unsignedShort = bytes.getUnsignedShort(i2);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "local_variable_type_table_length: " + Hex.u2(unsignedShort));
        }
        return new AttLocalVariableTypeTable(parseLocalVariables(bytes.slice(i2 + 2, i2 + i4), directClassFile.getConstantPool(), parseObserver, unsignedShort, true));
    }

    private BootstrapMethodsList parseBootstrapMethods(ByteArray byteArray, ConstantPool constantPool, CstType cstType, int i2, int i4, int i5, ParseObserver parseObserver) throws ParseException {
        BootstrapMethodsList bootstrapMethodsList = new BootstrapMethodsList(i2);
        int i6 = i4;
        int i7 = i5;
        for (int i8 = 0; i8 < i2; i8++) {
            if (i7 < 4) {
                throwTruncated();
            }
            int unsignedShort = byteArray.getUnsignedShort(i6);
            int i9 = i6 + 2;
            int unsignedShort2 = byteArray.getUnsignedShort(i9);
            if (parseObserver != null) {
                parseObserver.parsed(byteArray, i6, 2, "bootstrap_method_ref: " + Hex.u2(unsignedShort));
                parseObserver.parsed(byteArray, i9, 2, "num_bootstrap_arguments: " + Hex.u2(unsignedShort2));
            }
            i6 += 4;
            i7 -= 4;
            if (i7 < unsignedShort2 * 2) {
                throwTruncated();
            }
            BootstrapMethodArgumentsList bootstrapMethodArgumentsList = new BootstrapMethodArgumentsList(unsignedShort2);
            int i10 = 0;
            while (i10 < unsignedShort2) {
                int unsignedShort3 = byteArray.getUnsignedShort(i6);
                if (parseObserver != null) {
                    parseObserver.parsed(byteArray, i6, 2, "bootstrap_arguments[" + i10 + "]" + Hex.u2(unsignedShort3));
                }
                bootstrapMethodArgumentsList.set(i10, constantPool.get(unsignedShort3));
                i10++;
                i6 += 2;
                i7 -= 2;
            }
            bootstrapMethodArgumentsList.setImmutable();
            bootstrapMethodsList.set(i8, cstType, (CstMethodHandle) constantPool.get(unsignedShort), bootstrapMethodArgumentsList);
        }
        bootstrapMethodsList.setImmutable();
        if (i7 != 0) {
            throwBadLength(i7);
        }
        return bootstrapMethodsList;
    }

    private LocalVariableList parseLocalVariables(ByteArray byteArray, ConstantPool constantPool, ParseObserver parseObserver, int i2, boolean z3) {
        CstString cstString;
        CstString cstString2;
        int i4 = i2 * 10;
        if (byteArray.size() != i4) {
            throwBadLength(i4 + 2);
        }
        ByteArray.MyDataInputStream makeDataInputStream = byteArray.makeDataInputStream();
        LocalVariableList localVariableList = new LocalVariableList(i2);
        for (int i5 = 0; i5 < i2; i5++) {
            try {
                int readUnsignedShort = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort2 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort3 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort4 = makeDataInputStream.readUnsignedShort();
                int readUnsignedShort5 = makeDataInputStream.readUnsignedShort();
                CstString cstString3 = (CstString) constantPool.get(readUnsignedShort3);
                CstString cstString4 = (CstString) constantPool.get(readUnsignedShort4);
                if (z3) {
                    cstString2 = null;
                    cstString = cstString4;
                } else {
                    cstString = null;
                    cstString2 = cstString4;
                }
                localVariableList.set(i5, readUnsignedShort, readUnsignedShort2, cstString3, cstString2, cstString, readUnsignedShort5);
                if (parseObserver != null) {
                    parseObserver.parsed(byteArray, i5 * 10, 10, Hex.u2(readUnsignedShort) + ".." + Hex.u2(readUnsignedShort + readUnsignedShort2) + " " + Hex.u2(readUnsignedShort5) + " " + cstString3.toHuman() + " " + cstString4.toHuman());
                }
            } catch (IOException e4) {
                throw new RuntimeException("shouldn't happen", e4);
            }
        }
        localVariableList.setImmutable();
        return localVariableList;
    }

    private Attribute runtimeInvisibleAnnotations(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeInvisibleAnnotations(new AnnotationParser(directClassFile, i2, i4, parseObserver).parseAnnotationAttribute(AnnotationVisibility.BUILD), i4);
    }

    private Attribute runtimeInvisibleParameterAnnotations(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeInvisibleParameterAnnotations(new AnnotationParser(directClassFile, i2, i4, parseObserver).parseParameterAttribute(AnnotationVisibility.BUILD), i4);
    }

    private Attribute runtimeVisibleAnnotations(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeVisibleAnnotations(new AnnotationParser(directClassFile, i2, i4, parseObserver).parseAnnotationAttribute(AnnotationVisibility.RUNTIME), i4);
    }

    private Attribute runtimeVisibleParameterAnnotations(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 < 2) {
            throwSeverelyTruncated();
        }
        return new AttRuntimeVisibleParameterAnnotations(new AnnotationParser(directClassFile, i2, i4, parseObserver).parseParameterAttribute(AnnotationVisibility.RUNTIME), i4);
    }

    private Attribute signature(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 2) {
            throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        CstString cstString = (CstString) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i2));
        AttSignature attSignature = new AttSignature(cstString);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "signature: " + cstString);
        }
        return attSignature;
    }

    private Attribute sourceDebugExtension(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        ByteArray slice = directClassFile.getBytes().slice(i2, i2 + i4);
        CstString cstString = new CstString(slice);
        AttSourceDebugExtension attSourceDebugExtension = new AttSourceDebugExtension(cstString);
        if (parseObserver != null) {
            String string = cstString.getString();
            parseObserver.parsed(slice, i2, i4, "sourceDebugExtension: " + string);
        }
        return attSourceDebugExtension;
    }

    private Attribute sourceFile(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 2) {
            throwBadLength(2);
        }
        ByteArray bytes = directClassFile.getBytes();
        CstString cstString = (CstString) directClassFile.getConstantPool().get(bytes.getUnsignedShort(i2));
        AttSourceFile attSourceFile = new AttSourceFile(cstString);
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, 2, "source: " + cstString);
        }
        return attSourceFile;
    }

    private Attribute synthetic(DirectClassFile directClassFile, int i2, int i4, ParseObserver parseObserver) {
        if (i4 != 0) {
            return throwBadLength(0);
        }
        return new AttSynthetic();
    }

    private static Attribute throwBadLength(int i2) {
        throw new ParseException("bad attribute length; expected length " + Hex.u4(i2));
    }

    private static Attribute throwSeverelyTruncated() {
        throw new ParseException("severely truncated attribute");
    }

    private static Attribute throwTruncated() {
        throw new ParseException("truncated attribute");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.dx.cf.direct.AttributeFactory
    public Attribute parse0(DirectClassFile directClassFile, int i2, String str, int i4, int i5, ParseObserver parseObserver) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        if (str == AttLineNumberTable.ATTRIBUTE_NAME) {
                            return lineNumberTable(directClassFile, i4, i5, parseObserver);
                        }
                        if (str == AttLocalVariableTable.ATTRIBUTE_NAME) {
                            return localVariableTable(directClassFile, i4, i5, parseObserver);
                        }
                        if (str == AttLocalVariableTypeTable.ATTRIBUTE_NAME) {
                            return localVariableTypeTable(directClassFile, i4, i5, parseObserver);
                        }
                    }
                } else if (str == AttAnnotationDefault.ATTRIBUTE_NAME) {
                    return annotationDefault(directClassFile, i4, i5, parseObserver);
                } else {
                    if (str == AttCode.ATTRIBUTE_NAME) {
                        return code(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttDeprecated.ATTRIBUTE_NAME) {
                        return deprecated(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttExceptions.ATTRIBUTE_NAME) {
                        return exceptions(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME) {
                        return runtimeInvisibleAnnotations(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME) {
                        return runtimeVisibleAnnotations(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttRuntimeInvisibleParameterAnnotations.ATTRIBUTE_NAME) {
                        return runtimeInvisibleParameterAnnotations(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttRuntimeVisibleParameterAnnotations.ATTRIBUTE_NAME) {
                        return runtimeVisibleParameterAnnotations(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttSignature.ATTRIBUTE_NAME) {
                        return signature(directClassFile, i4, i5, parseObserver);
                    }
                    if (str == AttSynthetic.ATTRIBUTE_NAME) {
                        return synthetic(directClassFile, i4, i5, parseObserver);
                    }
                }
            } else if (str == AttConstantValue.ATTRIBUTE_NAME) {
                return constantValue(directClassFile, i4, i5, parseObserver);
            } else {
                if (str == AttDeprecated.ATTRIBUTE_NAME) {
                    return deprecated(directClassFile, i4, i5, parseObserver);
                }
                if (str == AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME) {
                    return runtimeInvisibleAnnotations(directClassFile, i4, i5, parseObserver);
                }
                if (str == AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME) {
                    return runtimeVisibleAnnotations(directClassFile, i4, i5, parseObserver);
                }
                if (str == AttSignature.ATTRIBUTE_NAME) {
                    return signature(directClassFile, i4, i5, parseObserver);
                }
                if (str == AttSynthetic.ATTRIBUTE_NAME) {
                    return synthetic(directClassFile, i4, i5, parseObserver);
                }
            }
        } else if (str == AttBootstrapMethods.ATTRIBUTE_NAME) {
            return bootstrapMethods(directClassFile, i4, i5, parseObserver);
        } else {
            if (str == AttDeprecated.ATTRIBUTE_NAME) {
                return deprecated(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttEnclosingMethod.ATTRIBUTE_NAME) {
                return enclosingMethod(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttInnerClasses.ATTRIBUTE_NAME) {
                return innerClasses(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttRuntimeInvisibleAnnotations.ATTRIBUTE_NAME) {
                return runtimeInvisibleAnnotations(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttRuntimeVisibleAnnotations.ATTRIBUTE_NAME) {
                return runtimeVisibleAnnotations(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttSynthetic.ATTRIBUTE_NAME) {
                return synthetic(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttSignature.ATTRIBUTE_NAME) {
                return signature(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttSourceDebugExtension.ATTRIBUTE_NAME) {
                return sourceDebugExtension(directClassFile, i4, i5, parseObserver);
            }
            if (str == AttSourceFile.ATTRIBUTE_NAME) {
                return sourceFile(directClassFile, i4, i5, parseObserver);
            }
        }
        return super.parse0(directClassFile, i2, str, i4, i5, parseObserver);
    }
}

package com.android.dx.dex.cf;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.cf.code.BootstrapMethodsList;
import com.android.dx.cf.direct.DirectClassFile;
import com.android.dx.cf.iface.Field;
import com.android.dx.cf.iface.FieldList;
import com.android.dx.command.dexer.DxContext;
import com.android.dx.dex.DexOptions;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.RopTranslator;
import com.android.dx.dex.file.CallSiteIdsSection;
import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.dex.file.DexFile;
import com.android.dx.dex.file.EncodedField;
import com.android.dx.dex.file.FieldIdsSection;
import com.android.dx.dex.file.MethodHandlesSection;
import com.android.dx.dex.file.MethodIdsSection;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.LocalVariableInfo;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.ConstantPool;
import com.android.dx.rop.cst.CstBaseMethodRef;
import com.android.dx.rop.cst.CstBoolean;
import com.android.dx.rop.cst.CstByte;
import com.android.dx.rop.cst.CstCallSite;
import com.android.dx.rop.cst.CstCallSiteRef;
import com.android.dx.rop.cst.CstChar;
import com.android.dx.rop.cst.CstEnumRef;
import com.android.dx.rop.cst.CstFieldRef;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstInterfaceMethodRef;
import com.android.dx.rop.cst.CstInvokeDynamic;
import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstShort;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;
import com.android.dx.rop.type.Type;
/* loaded from: classes2.dex */
public class CfTranslator {
    private static final boolean DEBUG = false;

    private CfTranslator() {
    }

    private static TypedConstant coerceConstant(TypedConstant typedConstant, Type type) {
        if (typedConstant.getType().equals(type)) {
            return typedConstant;
        }
        int basicType = type.getBasicType();
        if (basicType != 1) {
            if (basicType != 2) {
                if (basicType != 3) {
                    if (basicType == 8) {
                        return CstShort.make(((CstInteger) typedConstant).getValue());
                    }
                    throw new UnsupportedOperationException("can't coerce " + typedConstant + " to " + type);
                }
                return CstChar.make(((CstInteger) typedConstant).getValue());
            }
            return CstByte.make(((CstInteger) typedConstant).getValue());
        }
        return CstBoolean.make(((CstInteger) typedConstant).getValue());
    }

    private static void processFields(DirectClassFile directClassFile, ClassDefItem classDefItem, DexFile dexFile) {
        CstType thisClass = directClassFile.getThisClass();
        FieldList fields = directClassFile.getFields();
        int size = fields.size();
        for (int i2 = 0; i2 < size; i2++) {
            Field field = fields.get(i2);
            try {
                CstFieldRef cstFieldRef = new CstFieldRef(thisClass, field.getNat());
                int accessFlags = field.getAccessFlags();
                if (AccessFlags.isStatic(accessFlags)) {
                    TypedConstant constantValue = field.getConstantValue();
                    EncodedField encodedField = new EncodedField(cstFieldRef, accessFlags);
                    if (constantValue != null) {
                        constantValue = coerceConstant(constantValue, cstFieldRef.getType());
                    }
                    classDefItem.addStaticField(encodedField, constantValue);
                } else {
                    classDefItem.addInstanceField(new EncodedField(cstFieldRef, accessFlags));
                }
                Annotations annotations = AttributeTranslator.getAnnotations(field.getAttributes());
                if (annotations.size() != 0) {
                    classDefItem.addFieldAnnotations(cstFieldRef, annotations, dexFile);
                }
                dexFile.getFieldIds().intern(cstFieldRef);
            } catch (RuntimeException e4) {
                throw ExceptionWithContext.withContext(e4, "...while processing " + field.getName().toHuman() + " " + field.getDescriptor().toHuman());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb A[Catch: RuntimeException -> 0x0165, TryCatch #0 {RuntimeException -> 0x0165, blocks: (B:5:0x001f, B:7:0x0043, B:15:0x0055, B:19:0x005d, B:21:0x009c, B:23:0x00a4, B:25:0x00ae, B:28:0x00b7, B:30:0x00bb, B:32:0x00c2, B:35:0x00ce), top: B:72:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0109 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0113 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0128 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0144 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0151 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processMethods(com.android.dx.command.dexer.DxContext r28, com.android.dx.cf.direct.DirectClassFile r29, com.android.dx.dex.cf.CfOptions r30, com.android.dx.dex.DexOptions r31, com.android.dx.dex.file.ClassDefItem r32, com.android.dx.dex.file.DexFile r33) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.dx.dex.cf.CfTranslator.processMethods(com.android.dx.command.dexer.DxContext, com.android.dx.cf.direct.DirectClassFile, com.android.dx.dex.cf.CfOptions, com.android.dx.dex.DexOptions, com.android.dx.dex.file.ClassDefItem, com.android.dx.dex.file.DexFile):void");
    }

    public static ClassDefItem translate(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        try {
            return translate0(dxContext, directClassFile, bArr, cfOptions, dexOptions, dexFile);
        } catch (RuntimeException e4) {
            throw ExceptionWithContext.withContext(e4, "...while processing " + directClassFile.getFilePath());
        }
    }

    private static ClassDefItem translate0(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        dxContext.optimizerOptions.loadOptimizeLists(cfOptions.optimizeListFile, cfOptions.dontOptimizeListFile);
        ClassDefItem classDefItem = new ClassDefItem(directClassFile.getThisClass(), directClassFile.getAccessFlags() & (-33), directClassFile.getSuperclass(), directClassFile.getInterfaces(), cfOptions.positionInfo == 1 ? null : directClassFile.getSourceFile());
        Annotations classAnnotations = AttributeTranslator.getClassAnnotations(directClassFile, cfOptions);
        if (classAnnotations.size() != 0) {
            classDefItem.setClassAnnotations(classAnnotations, dexFile);
        }
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MethodHandlesSection methodHandles = dexFile.getMethodHandles();
        CallSiteIdsSection callSiteIds = dexFile.getCallSiteIds();
        processFields(directClassFile, classDefItem, dexFile);
        processMethods(dxContext, directClassFile, cfOptions, dexOptions, classDefItem, dexFile);
        ConstantPool constantPool = directClassFile.getConstantPool();
        int size = constantPool.size();
        for (int i2 = 0; i2 < size; i2++) {
            Constant orNull = constantPool.getOrNull(i2);
            if (orNull instanceof CstMethodRef) {
                methodIds.intern((CstBaseMethodRef) orNull);
            } else if (orNull instanceof CstInterfaceMethodRef) {
                methodIds.intern(((CstInterfaceMethodRef) orNull).toMethodRef());
            } else if (orNull instanceof CstFieldRef) {
                fieldIds.intern((CstFieldRef) orNull);
            } else if (orNull instanceof CstEnumRef) {
                fieldIds.intern(((CstEnumRef) orNull).getFieldRef());
            } else if (orNull instanceof CstMethodHandle) {
                methodHandles.intern((CstMethodHandle) orNull);
            } else if (orNull instanceof CstInvokeDynamic) {
                CstInvokeDynamic cstInvokeDynamic = (CstInvokeDynamic) orNull;
                BootstrapMethodsList.Item item = directClassFile.getBootstrapMethods().get(cstInvokeDynamic.getBootstrapMethodIndex());
                CstCallSite make = CstCallSite.make(item.getBootstrapMethodHandle(), cstInvokeDynamic.getNat(), item.getBootstrapMethodArguments());
                cstInvokeDynamic.setDeclaringClass(directClassFile.getThisClass());
                cstInvokeDynamic.setCallSite(make);
                for (CstCallSiteRef cstCallSiteRef : cstInvokeDynamic.getReferences()) {
                    callSiteIds.intern(cstCallSiteRef);
                }
            }
        }
        return classDefItem;
    }

    private static void updateDexStatistics(DxContext dxContext, CfOptions cfOptions, DexOptions dexOptions, RopMethod ropMethod, RopMethod ropMethod2, LocalVariableInfo localVariableInfo, int i2, int i4) {
        DalvCode translate = RopTranslator.translate(ropMethod, cfOptions.positionInfo, localVariableInfo, i2, dexOptions);
        DalvCode translate2 = RopTranslator.translate(ropMethod2, cfOptions.positionInfo, localVariableInfo, i2, dexOptions);
        DalvCode.AssignIndicesCallback assignIndicesCallback = new DalvCode.AssignIndicesCallback() { // from class: com.android.dx.dex.cf.CfTranslator.1
            @Override // com.android.dx.dex.code.DalvCode.AssignIndicesCallback
            public int getIndex(Constant constant) {
                return 0;
            }
        };
        translate.assignIndices(assignIndicesCallback);
        translate2.assignIndices(assignIndicesCallback);
        dxContext.codeStatistics.updateDexStatistics(translate2, translate);
        dxContext.codeStatistics.updateOriginalByteCount(i4);
    }
}

package com.swift.sandhook.xposedcompat.methodgen;

import android.text.TextUtils;
import com.alipay.sdk.packet.d;
import com.android.dx.BinaryOp;
import com.android.dx.Code;
import com.android.dx.Comparison;
import com.android.dx.DexMaker;
import com.android.dx.FieldId;
import com.android.dx.Label;
import com.android.dx.Local;
import com.android.dx.MethodId;
import com.android.dx.TypeId;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.SandHookMethodResolver;
import com.swift.sandhook.wrapper.HookWrapper;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import com.swift.sandhook.xposedcompat.utils.DexMakerUtils;
import dalvik.system.InMemoryDexClassLoader;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes4.dex */
public class HookerDexMaker implements HookMaker {
    private static final String CALLBACK_METHOD_NAME_AFTER = "callAfterHookedMethod";
    private static final String CALLBACK_METHOD_NAME_BEFORE = "callBeforeHookedMethod";
    private static final String CLASS_DESC_PREFIX = "L";
    private static final String CLASS_NAME_PREFIX = "SandHooker";
    private static final String FIELD_NAME_BACKUP_METHOD = "backupMethod";
    private static final String FIELD_NAME_HOOK_INFO = "additionalHookInfo";
    private static final String FIELD_NAME_METHOD = "method";
    public static final String METHOD_NAME_BACKUP = "backup";
    public static final String METHOD_NAME_CALL_BACKUP = "callBackup";
    public static final String METHOD_NAME_HOOK = "hook";
    public static final String METHOD_NAME_LOG = "printMethodHookIn";
    public static final String METHOD_NAME_SETUP = "setup";
    private static final String PARAMS_FIELD_NAME_ARGS = "args";
    private static final String PARAMS_FIELD_NAME_METHOD = "method";
    private static final String PARAMS_FIELD_NAME_THIS_OBJECT = "thisObject";
    private static final MethodId<XC_MethodHook, Void> callAfterCallbackMethodId;
    private static final MethodId<XC_MethodHook, Void> callBeforeCallbackMethodId;
    private static final TypeId<XC_MethodHook> callbackTypeId;
    private static final TypeId<XposedBridge.CopyOnWriteSortedSet> callbacksTypeId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Object> getResultMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Throwable> getThrowableMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Boolean> hasThrowableMethodId;
    private static final TypeId<XposedBridge.AdditionalHookInfo> hookInfoTypeId;
    private static final MethodId<XposedBridge, Void> logThrowableMethodId;
    private static final TypeId<Member> memberTypeId;
    private static final TypeId<Method> methodTypeId;
    public static final TypeId<Object[]> objArrayTypeId = TypeId.get(Object[].class);
    private static final TypeId<XC_MethodHook.MethodHookParam> paramTypeId;
    private static final FieldId<XC_MethodHook.MethodHookParam, Boolean> returnEarlyFieldId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Void> setResultMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Void> setThrowableMethodId;
    private static final TypeId<Throwable> throwableTypeId;
    private static final TypeId<XposedBridge> xposedBridgeTypeId;
    private Class<?>[] mActualParameterTypes;
    private ClassLoader mAppClassLoader;
    private Method mBackupMethod;
    private FieldId<?, Method> mBackupMethodFieldId;
    private MethodId<?, ?> mBackupMethodId;
    private Method mCallBackupMethod;
    private MethodId<?, ?> mCallBackupMethodId;
    private String mDexDirPath;
    private DexMaker mDexMaker;
    private boolean mHasThrowable;
    private Class<?> mHookClass;
    private XposedBridge.AdditionalHookInfo mHookInfo;
    private FieldId<?, XposedBridge.AdditionalHookInfo> mHookInfoFieldId;
    private Method mHookMethod;
    private MethodId<?, ?> mHookMethodId;
    private TypeId<?> mHookerTypeId;
    private boolean mIsStatic;
    private Member mMember;
    private FieldId<?, Member> mMethodFieldId;
    private TypeId<?>[] mParameterTypeIds;
    private MethodId<?, ?> mPrintLogMethodId;
    private Class<?> mReturnType;
    private TypeId<?> mReturnTypeId;
    private MethodId<?, ?> mSandHookCallOriginMethodId;

    static {
        TypeId<Throwable> typeId = TypeId.get(Throwable.class);
        throwableTypeId = typeId;
        memberTypeId = TypeId.get(Member.class);
        methodTypeId = TypeId.get(Method.class);
        TypeId<XC_MethodHook> typeId2 = TypeId.get(XC_MethodHook.class);
        callbackTypeId = typeId2;
        hookInfoTypeId = TypeId.get(XposedBridge.AdditionalHookInfo.class);
        callbacksTypeId = TypeId.get(XposedBridge.CopyOnWriteSortedSet.class);
        TypeId<XC_MethodHook.MethodHookParam> typeId3 = TypeId.get(XC_MethodHook.MethodHookParam.class);
        paramTypeId = typeId3;
        TypeId typeId4 = TypeId.VOID;
        TypeId<?> typeId5 = TypeId.OBJECT;
        setResultMethodId = typeId3.getMethod(typeId4, "setResult", typeId5);
        setThrowableMethodId = typeId3.getMethod(typeId4, "setThrowable", typeId);
        getResultMethodId = typeId3.getMethod(typeId5, "getResult", new TypeId[0]);
        getThrowableMethodId = typeId3.getMethod(typeId, "getThrowable", new TypeId[0]);
        TypeId typeId6 = TypeId.BOOLEAN;
        hasThrowableMethodId = typeId3.getMethod(typeId6, "hasThrowable", new TypeId[0]);
        callAfterCallbackMethodId = typeId2.getMethod(typeId4, CALLBACK_METHOD_NAME_AFTER, typeId3);
        callBeforeCallbackMethodId = typeId2.getMethod(typeId4, CALLBACK_METHOD_NAME_BEFORE, typeId3);
        returnEarlyFieldId = typeId3.getField(typeId6, "returnEarly");
        TypeId<XposedBridge> typeId7 = TypeId.get(XposedBridge.class);
        xposedBridgeTypeId = typeId7;
        logThrowableMethodId = typeId7.getMethod(typeId4, "log", typeId);
    }

    private Local[] createParameterLocals(Code code) {
        Local[] localArr = new Local[this.mParameterTypeIds.length];
        int i2 = 0;
        while (true) {
            TypeId<?>[] typeIdArr = this.mParameterTypeIds;
            if (i2 >= typeIdArr.length) {
                return localArr;
            }
            localArr[i2] = code.getParameter(i2, typeIdArr[i2]);
            i2++;
        }
    }

    private HookWrapper.HookEntity doMake(String className, String dexName) throws Exception {
        ClassLoader inMemoryDexClassLoader;
        TypeId<?> typeId = TypeId.get(CLASS_DESC_PREFIX + className + ";");
        this.mHookerTypeId = typeId;
        DexMaker dexMaker = this.mDexMaker;
        dexMaker.declare(typeId, className + ".generated", 1, TypeId.OBJECT, new TypeId[0]);
        generateFields();
        generateSetupMethod();
        if (XposedCompat.retryWhenCallOriginError) {
            generateBackupAndCallOriginCheckMethod();
        } else {
            generateBackupMethod();
        }
        generateCallBackupMethod();
        generateHookMethod();
        if (TextUtils.isEmpty(this.mDexDirPath)) {
            if (SandHookConfig.SDK_INT >= 26) {
                inMemoryDexClassLoader = new InMemoryDexClassLoader(ByteBuffer.wrap(this.mDexMaker.generate()), this.mAppClassLoader);
            } else {
                throw new IllegalArgumentException("dexDirPath should not be empty!!!");
            }
        } else {
            try {
                inMemoryDexClassLoader = this.mDexMaker.generateAndLoad(this.mAppClassLoader, new File(this.mDexDirPath), dexName);
            } catch (IOException unused) {
                inMemoryDexClassLoader = SandHookConfig.SDK_INT >= 26 ? new InMemoryDexClassLoader(ByteBuffer.wrap(this.mDexMaker.generate()), this.mAppClassLoader) : null;
            }
        }
        if (inMemoryDexClassLoader == null) {
            return null;
        }
        return loadHookerClass(inMemoryDexClassLoader, className);
    }

    private void generateBackupAndCallOriginCheckMethod() {
        int i2;
        this.mBackupMethodId = this.mHookerTypeId.getMethod(this.mReturnTypeId, "backup", this.mParameterTypeIds);
        TypeId typeId = TypeId.get(ErrorCatch.class);
        TypeId typeId2 = TypeId.get(Object.class);
        TypeId<Member> typeId3 = memberTypeId;
        TypeId<Method> typeId4 = methodTypeId;
        this.mSandHookCallOriginMethodId = typeId.getMethod(typeId2, "callOriginError", typeId3, typeId4, TypeId.get(Object.class), TypeId.get(Object[].class));
        MethodId method = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), "printCallOriginError", typeId4);
        Code declare = this.mDexMaker.declare(this.mBackupMethodId, 9);
        Local<?> newLocal = declare.newLocal(typeId3);
        Local<?> newLocal2 = declare.newLocal(typeId4);
        TypeId<Object> typeId5 = TypeId.OBJECT;
        Local<?> newLocal3 = declare.newLocal(typeId5);
        Local<?> newLocal4 = declare.newLocal(objArrayTypeId);
        TypeId<Integer> typeId6 = TypeId.INT;
        Local<Integer> newLocal5 = declare.newLocal(typeId6);
        Local<Integer> newLocal6 = declare.newLocal(typeId6);
        Local<?> newLocal7 = declare.newLocal(typeId5);
        Label label = new Label();
        Local[] createParameterLocals = createParameterLocals(declare);
        Map<TypeId, Local> createResultLocals = DexMakerUtils.createResultLocals(declare);
        declare.addCatchClause(throwableTypeId, label);
        declare.sget(this.mMethodFieldId, newLocal);
        declare.invokeStatic(method, null, newLocal);
        declare.loadConstant(newLocal4, null);
        declare.loadConstant(newLocal6, 0);
        declare.sget(this.mBackupMethodFieldId, newLocal2);
        int length = this.mParameterTypeIds.length;
        if (this.mIsStatic) {
            declare.loadConstant(newLocal3, null);
            i2 = 0;
        } else {
            declare.move(newLocal3, createParameterLocals[0]);
            i2 = 1;
        }
        declare.loadConstant(newLocal5, Integer.valueOf(length - i2));
        declare.newArray(newLocal4, newLocal5);
        for (int i4 = i2; i4 < length; i4++) {
            DexMakerUtils.autoBoxIfNecessary(declare, newLocal7, createParameterLocals[i4]);
            declare.loadConstant(newLocal6, Integer.valueOf(i4 - i2));
            declare.aput(newLocal4, newLocal6, newLocal7);
        }
        TypeId<?> typeId7 = this.mReturnTypeId;
        TypeId<Void> typeId8 = TypeId.VOID;
        if (typeId7.equals(typeId8)) {
            declare.invokeStatic(this.mSandHookCallOriginMethodId, null, newLocal, newLocal2, newLocal3, newLocal4);
            declare.returnVoid();
        } else {
            declare.invokeStatic(this.mSandHookCallOriginMethodId, newLocal7, newLocal, newLocal2, newLocal3, newLocal4);
            Local local = createResultLocals.get(DexMakerUtils.getObjTypeIdIfPrimitive(this.mReturnTypeId));
            declare.cast(local, newLocal7);
            Local local2 = createResultLocals.get(this.mReturnTypeId);
            DexMakerUtils.autoUnboxIfNecessary(declare, local2, local, createResultLocals, true);
            declare.returnValue(local2);
        }
        declare.mark(label);
        if (this.mReturnTypeId.equals(typeId8)) {
            declare.returnVoid();
        } else {
            declare.returnValue(createResultLocals.get(this.mReturnTypeId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void generateBackupMethod() {
        MethodId method = this.mHookerTypeId.getMethod(this.mReturnTypeId, "backup", this.mParameterTypeIds);
        this.mBackupMethodId = method;
        Code declare = this.mDexMaker.declare(method, 9);
        TypeId<Member> typeId = memberTypeId;
        Local<?> newLocal = declare.newLocal(typeId);
        Map<TypeId, Local> createResultLocals = DexMakerUtils.createResultLocals(declare);
        MethodId method2 = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), "printCallOriginError", typeId);
        Label label = new Label();
        declare.addCatchClause(throwableTypeId, label);
        declare.sget(this.mMethodFieldId, newLocal);
        declare.invokeStatic(method2, null, newLocal);
        declare.mark(label);
        if (this.mReturnTypeId.equals(TypeId.VOID)) {
            declare.returnVoid();
        } else {
            declare.returnValue(createResultLocals.get(this.mReturnTypeId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void generateCallBackupMethod() {
        MethodId method = this.mHookerTypeId.getMethod(this.mReturnTypeId, METHOD_NAME_CALL_BACKUP, this.mParameterTypeIds);
        this.mCallBackupMethodId = method;
        Code declare = this.mDexMaker.declare(method, 9);
        TypeId<Member> typeId = memberTypeId;
        Local<?> newLocal = declare.newLocal(typeId);
        TypeId<Method> typeId2 = methodTypeId;
        Local<?> newLocal2 = declare.newLocal(typeId2);
        Local[] createParameterLocals = createParameterLocals(declare);
        Map<TypeId, Local> createResultLocals = DexMakerUtils.createResultLocals(declare);
        declare.sget(this.mMethodFieldId, newLocal);
        declare.sget(this.mBackupMethodFieldId, newLocal2);
        declare.invokeStatic(TypeId.get(SandHook.class).getMethod(TypeId.get(Void.TYPE), "ensureBackupMethod", typeId, typeId2), null, newLocal, newLocal2);
        if (this.mReturnTypeId.equals(TypeId.VOID)) {
            declare.invokeStatic(this.mBackupMethodId, null, createParameterLocals);
            declare.returnVoid();
            return;
        }
        Local local = createResultLocals.get(this.mReturnTypeId);
        declare.invokeStatic(this.mBackupMethodId, local, createParameterLocals);
        declare.returnValue(local);
    }

    private void generateFields() {
        this.mHookInfoFieldId = this.mHookerTypeId.getField(hookInfoTypeId, FIELD_NAME_HOOK_INFO);
        this.mMethodFieldId = this.mHookerTypeId.getField(memberTypeId, d.f9798s);
        this.mBackupMethodFieldId = this.mHookerTypeId.getField(methodTypeId, FIELD_NAME_BACKUP_METHOD);
        this.mDexMaker.declare(this.mHookInfoFieldId, 8, null);
        this.mDexMaker.declare(this.mMethodFieldId, 8, null);
        this.mDexMaker.declare(this.mBackupMethodFieldId, 8, null);
    }

    private void generateHookMethod() {
        Local local;
        boolean z3;
        int i2;
        Map<TypeId, Local> map;
        this.mHookMethodId = this.mHookerTypeId.getMethod(this.mReturnTypeId, "hook", this.mParameterTypeIds);
        this.mPrintLogMethodId = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), METHOD_NAME_LOG, TypeId.get(Member.class));
        Code declare = this.mDexMaker.declare(this.mHookMethodId, 9);
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        Label label5 = new Label();
        Label label6 = new Label();
        Label label7 = new Label();
        Label label8 = new Label();
        Label label9 = new Label();
        Label label10 = new Label();
        Label label11 = new Label();
        Label label12 = new Label();
        Label label13 = new Label();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        Local<?> newLocal = declare.newLocal(typeId);
        TypeId<XposedBridge.AdditionalHookInfo> typeId2 = hookInfoTypeId;
        Local newLocal2 = declare.newLocal(typeId2);
        TypeId typeId3 = callbacksTypeId;
        Local newLocal3 = declare.newLocal(typeId3);
        TypeId<Object[]> typeId4 = objArrayTypeId;
        Local<?> newLocal4 = declare.newLocal(typeId4);
        TypeId<Integer> typeId5 = TypeId.INT;
        Local<Integer> newLocal5 = declare.newLocal(typeId5);
        TypeId<Object> typeId6 = TypeId.OBJECT;
        Local<?> newLocal6 = declare.newLocal(typeId6);
        Local<?> newLocal7 = declare.newLocal(callbackTypeId);
        Local<?> newLocal8 = declare.newLocal(typeId6);
        Local newLocal9 = declare.newLocal(typeId5);
        Local<?> newLocal10 = declare.newLocal(typeId6);
        TypeId<Throwable> typeId7 = throwableTypeId;
        Local<?> newLocal11 = declare.newLocal(typeId7);
        Local<?> newLocal12 = declare.newLocal(paramTypeId);
        Local<?> newLocal13 = declare.newLocal(memberTypeId);
        Local newLocal14 = declare.newLocal(typeId6);
        Local newLocal15 = declare.newLocal(typeId4);
        Local<?> newLocal16 = declare.newLocal(typeId);
        Local<Integer> newLocal17 = declare.newLocal(typeId5);
        Local newLocal18 = declare.newLocal(typeId5);
        Local<Integer> newLocal19 = declare.newLocal(typeId5);
        Local<?> newLocal20 = declare.newLocal(typeId6);
        Local<?> newLocal21 = declare.newLocal(typeId7);
        Local newLocal22 = declare.newLocal(typeId);
        Local[] createParameterLocals = createParameterLocals(declare);
        Map<TypeId, Local> createResultLocals = DexMakerUtils.createResultLocals(declare);
        declare.loadConstant(newLocal15, null);
        declare.loadConstant(newLocal18, 0);
        declare.loadConstant(newLocal9, 1);
        declare.loadConstant(newLocal5, 0);
        declare.loadConstant(newLocal10, null);
        declare.sget(this.mMethodFieldId, newLocal13);
        declare.invokeStatic(this.mPrintLogMethodId, null, newLocal13);
        declare.sget(xposedBridgeTypeId.getField(typeId, "disableHooks"), newLocal);
        declare.compareZ(Comparison.NE, label, newLocal);
        declare.sget(this.mHookInfoFieldId, newLocal2);
        declare.iget(typeId2.getField(typeId3, "callbacks"), newLocal3, newLocal2);
        int i4 = 0;
        declare.invokeVirtual(typeId3.getMethod(typeId4, "getSnapshot", new TypeId[0]), newLocal4, newLocal3, new Local[0]);
        declare.arrayLength(newLocal5, newLocal4);
        declare.compareZ(Comparison.EQ, label, newLocal5);
        int length = this.mParameterTypeIds.length;
        if (this.mIsStatic) {
            local = newLocal14;
            declare.loadConstant(local, null);
        } else {
            local = newLocal14;
            declare.move(local, createParameterLocals[0]);
            i4 = 1;
        }
        declare.loadConstant(newLocal17, Integer.valueOf(length - i4));
        declare.newArray(newLocal15, newLocal17);
        int i5 = i4;
        while (i5 < length) {
            DexMakerUtils.autoBoxIfNecessary(declare, newLocal8, createParameterLocals[i5]);
            declare.loadConstant(newLocal18, Integer.valueOf(i5 - i4));
            declare.aput(newLocal15, newLocal18, newLocal8);
            i5++;
            length = length;
        }
        TypeId<XC_MethodHook.MethodHookParam> typeId8 = paramTypeId;
        declare.newInstance(newLocal12, typeId8.getConstructor(new TypeId[0]), new Local[0]);
        declare.iput(typeId8.getField(memberTypeId, d.f9798s), newLocal12, newLocal13);
        declare.iput(typeId8.getField(TypeId.OBJECT, PARAMS_FIELD_NAME_THIS_OBJECT), newLocal12, local);
        declare.iput(typeId8.getField(objArrayTypeId, PARAMS_FIELD_NAME_ARGS), newLocal12, newLocal15);
        declare.loadConstant(newLocal19, 0);
        declare.mark(label6);
        TypeId<? extends Throwable> typeId9 = throwableTypeId;
        declare.addCatchClause(typeId9, label3);
        declare.aget(newLocal6, newLocal4, newLocal19);
        declare.cast(newLocal7, newLocal6);
        declare.invokeVirtual(callBeforeCallbackMethodId, null, newLocal7, newLocal12);
        declare.jump(label4);
        declare.removeCatchClause(typeId9);
        declare.mark(label3);
        declare.moveException(newLocal11);
        declare.invokeStatic(logThrowableMethodId, null, newLocal11);
        declare.invokeVirtual(setResultMethodId, null, newLocal12, newLocal10);
        declare.loadConstant(newLocal16, Boolean.FALSE);
        FieldId<XC_MethodHook.MethodHookParam, Boolean> fieldId = returnEarlyFieldId;
        declare.iput(fieldId, newLocal12, newLocal16);
        declare.jump(label2);
        declare.mark(label4);
        declare.iget(fieldId, newLocal16, newLocal12);
        declare.compareZ(Comparison.EQ, label2, newLocal16);
        BinaryOp binaryOp = BinaryOp.ADD;
        declare.op(binaryOp, newLocal19, newLocal19, newLocal9);
        declare.jump(label5);
        declare.mark(label2);
        declare.op(binaryOp, newLocal19, newLocal19, newLocal9);
        declare.compare(Comparison.LT, label6, newLocal19, newLocal5);
        declare.mark(label5);
        declare.iget(fieldId, newLocal16, newLocal12);
        declare.compareZ(Comparison.NE, label9, newLocal16);
        declare.addCatchClause(typeId9, label8);
        int i6 = !this.mIsStatic ? 1 : 0;
        for (int i7 = i6; i7 < createParameterLocals.length; i7++) {
            declare.loadConstant(newLocal18, Integer.valueOf(i7 - i6));
            declare.aget(newLocal8, newLocal15, newLocal18);
            DexMakerUtils.autoUnboxIfNecessary(declare, createParameterLocals[i7], newLocal8, createResultLocals, true);
        }
        TypeId<?> typeId10 = this.mReturnTypeId;
        TypeId<Void> typeId11 = TypeId.VOID;
        if (typeId10.equals(typeId11)) {
            z3 = false;
            declare.invokeStatic(this.mBackupMethodId, null, createParameterLocals);
            i2 = 0;
            declare.invokeVirtual(setResultMethodId, null, newLocal12, newLocal10);
        } else {
            z3 = false;
            i2 = 0;
            Local local2 = createResultLocals.get(this.mReturnTypeId);
            declare.invokeStatic(this.mBackupMethodId, local2, createParameterLocals);
            DexMakerUtils.autoBoxIfNecessary(declare, newLocal8, local2);
            declare.invokeVirtual(setResultMethodId, null, newLocal12, newLocal8);
        }
        declare.jump(label9);
        TypeId<? extends Throwable> typeId12 = throwableTypeId;
        declare.removeCatchClause(typeId12);
        declare.mark(label8);
        declare.moveException(newLocal11);
        MethodId<XC_MethodHook.MethodHookParam, Void> methodId = setThrowableMethodId;
        Local<?>[] localArr = new Local[1];
        localArr[i2] = newLocal11;
        declare.invokeVirtual(methodId, z3, newLocal12, localArr);
        declare.mark(label9);
        BinaryOp binaryOp2 = BinaryOp.SUBTRACT;
        declare.op(binaryOp2, newLocal19, newLocal19, newLocal9);
        declare.mark(label7);
        MethodId<XC_MethodHook.MethodHookParam, Object> methodId2 = getResultMethodId;
        declare.invokeVirtual(methodId2, newLocal20, newLocal12, new Local[i2]);
        MethodId<XC_MethodHook.MethodHookParam, Throwable> methodId3 = getThrowableMethodId;
        declare.invokeVirtual(methodId3, newLocal21, newLocal12, new Local[0]);
        declare.addCatchClause(typeId12, label10);
        declare.aget(newLocal6, newLocal4, newLocal19);
        declare.cast(newLocal7, newLocal6);
        declare.invokeVirtual(callAfterCallbackMethodId, null, newLocal7, newLocal12);
        declare.jump(label11);
        declare.removeCatchClause(typeId12);
        declare.mark(label10);
        declare.moveException(newLocal11);
        declare.invokeStatic(logThrowableMethodId, null, newLocal11);
        declare.compareZ(Comparison.EQ, label12, newLocal21);
        declare.invokeVirtual(methodId, null, newLocal12, newLocal21);
        declare.jump(label11);
        declare.mark(label12);
        declare.invokeVirtual(setResultMethodId, null, newLocal12, newLocal20);
        declare.mark(label11);
        declare.op(binaryOp2, newLocal19, newLocal19, newLocal9);
        declare.compareZ(Comparison.GE, label7, newLocal19);
        declare.invokeVirtual(hasThrowableMethodId, newLocal22, newLocal12, new Local[0]);
        declare.compareZ(Comparison.NE, label13, newLocal22);
        if (this.mReturnTypeId.equals(typeId11)) {
            declare.returnVoid();
            map = createResultLocals;
        } else {
            declare.invokeVirtual(methodId2, newLocal8, newLocal12, new Local[0]);
            map = createResultLocals;
            Local local3 = map.get(DexMakerUtils.getObjTypeIdIfPrimitive(this.mReturnTypeId));
            declare.cast(local3, newLocal8);
            Local local4 = map.get(this.mReturnTypeId);
            DexMakerUtils.autoUnboxIfNecessary(declare, local4, local3, map, true);
            declare.returnValue(local4);
        }
        declare.mark(label13);
        declare.invokeVirtual(methodId3, newLocal11, newLocal12, new Local[0]);
        declare.throwValue(newLocal11);
        declare.mark(label);
        if (this.mReturnTypeId.equals(typeId11)) {
            declare.invokeStatic(this.mBackupMethodId, null, createParameterLocals);
            declare.returnVoid();
            return;
        }
        Local local5 = map.get(this.mReturnTypeId);
        declare.invokeStatic(this.mBackupMethodId, local5, createParameterLocals);
        declare.returnValue(local5);
    }

    private void generateSetupMethod() {
        TypeId<?> typeId = this.mHookerTypeId;
        TypeId typeId2 = TypeId.VOID;
        TypeId<Member> typeId3 = memberTypeId;
        TypeId<Method> typeId4 = methodTypeId;
        TypeId<XposedBridge.AdditionalHookInfo> typeId5 = hookInfoTypeId;
        Code declare = this.mDexMaker.declare(typeId.getMethod(typeId2, METHOD_NAME_SETUP, typeId3, typeId4, typeId5), 9);
        Local parameter = declare.getParameter(0, typeId3);
        Local parameter2 = declare.getParameter(1, typeId4);
        Local parameter3 = declare.getParameter(2, typeId5);
        declare.sput(this.mMethodFieldId, parameter);
        declare.sput(this.mBackupMethodFieldId, parameter2);
        declare.sput(this.mHookInfoFieldId, parameter3);
        declare.returnVoid();
    }

    private String getClassName(Member originMethod) {
        return "SandHooker_" + DexMakerUtils.MD5(originMethod.toString());
    }

    private static TypeId<?>[] getParameterTypeIds(Class<?>[] parameterTypes, boolean isStatic) {
        int i2;
        int length = parameterTypes.length;
        if (!isStatic) {
            length++;
        }
        TypeId<?>[] typeIdArr = new TypeId[length];
        if (isStatic) {
            i2 = 0;
        } else {
            typeIdArr[0] = TypeId.OBJECT;
            i2 = 1;
        }
        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
            typeIdArr[i4 + i2] = TypeId.get(parameterTypes[i4]);
        }
        return typeIdArr;
    }

    private static Class<?>[] getParameterTypes(Class<?>[] parameterTypes, boolean isStatic) {
        if (isStatic) {
            return parameterTypes;
        }
        Class<?>[] clsArr = new Class[parameterTypes.length + 1];
        clsArr[0] = Object.class;
        System.arraycopy(parameterTypes, 0, clsArr, 1, parameterTypes.length);
        return clsArr;
    }

    private HookWrapper.HookEntity loadHookerClass(ClassLoader loader, String className) throws Exception {
        Class<?> loadClass = loader.loadClass(className);
        this.mHookClass = loadClass;
        this.mHookMethod = loadClass.getMethod("hook", this.mActualParameterTypes);
        this.mBackupMethod = this.mHookClass.getMethod("backup", this.mActualParameterTypes);
        Method method = this.mHookClass.getMethod(METHOD_NAME_CALL_BACKUP, this.mActualParameterTypes);
        this.mCallBackupMethod = method;
        SandHook.resolveStaticMethod(method);
        SandHookMethodResolver.resolveMethod(this.mCallBackupMethod, this.mBackupMethod);
        SandHook.compileMethod(this.mCallBackupMethod);
        this.mHookClass.getMethod(METHOD_NAME_SETUP, Member.class, Method.class, XposedBridge.AdditionalHookInfo.class).invoke(null, this.mMember, this.mBackupMethod, this.mHookInfo);
        return new HookWrapper.HookEntity(this.mMember, this.mHookMethod, this.mBackupMethod);
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getBackupMethod() {
        return this.mBackupMethod;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getCallBackupMethod() {
        return this.mCallBackupMethod;
    }

    public Class getHookClass() {
        return this.mHookClass;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getHookMethod() {
        return this.mHookMethod;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public void start(Member member, XposedBridge.AdditionalHookInfo hookInfo, ClassLoader appClassLoader, String dexDirPath) throws Exception {
        if (member instanceof Method) {
            Method method = (Method) member;
            this.mIsStatic = Modifier.isStatic(method.getModifiers());
            Class<?> returnType = method.getReturnType();
            this.mReturnType = returnType;
            if (!returnType.equals(Void.class) && !this.mReturnType.equals(Void.TYPE) && !this.mReturnType.isPrimitive()) {
                this.mReturnType = Object.class;
                this.mReturnTypeId = TypeId.OBJECT;
            } else {
                this.mReturnTypeId = TypeId.get(this.mReturnType);
            }
            this.mParameterTypeIds = getParameterTypeIds(method.getParameterTypes(), this.mIsStatic);
            this.mActualParameterTypes = getParameterTypes(method.getParameterTypes(), this.mIsStatic);
            this.mHasThrowable = method.getExceptionTypes().length > 0;
        } else if (member instanceof Constructor) {
            Constructor constructor = (Constructor) member;
            this.mIsStatic = false;
            this.mReturnType = Void.TYPE;
            this.mReturnTypeId = TypeId.VOID;
            this.mParameterTypeIds = getParameterTypeIds(constructor.getParameterTypes(), this.mIsStatic);
            this.mActualParameterTypes = getParameterTypes(constructor.getParameterTypes(), this.mIsStatic);
            this.mHasThrowable = constructor.getExceptionTypes().length > 0;
        } else if (!member.getDeclaringClass().isInterface()) {
            if (Modifier.isAbstract(member.getModifiers())) {
                throw new IllegalArgumentException("Cannot hook abstract methods: " + member.toString());
            }
            throw new IllegalArgumentException("Only methods and constructors can be hooked: " + member.toString());
        } else {
            throw new IllegalArgumentException("Cannot hook interfaces: " + member.toString());
        }
        this.mMember = member;
        this.mHookInfo = hookInfo;
        this.mDexDirPath = dexDirPath;
        if (appClassLoader != null && !appClassLoader.getClass().getName().equals("java.lang.BootClassLoader")) {
            this.mAppClassLoader = appClassLoader;
        } else {
            this.mAppClassLoader = getClass().getClassLoader();
        }
        this.mDexMaker = new DexMaker();
        String className = getClassName(this.mMember);
        String str = className + ".jar";
        HookWrapper.HookEntity hookEntity = null;
        try {
            ClassLoader loadClassDirect = this.mDexMaker.loadClassDirect(this.mAppClassLoader, new File(this.mDexDirPath), str);
            if (loadClassDirect != null) {
                hookEntity = loadHookerClass(loadClassDirect, className);
            }
        } catch (Throwable unused) {
        }
        if (hookEntity == null) {
            hookEntity = doMake(className, str);
        }
        SandHook.hook(hookEntity);
    }
}

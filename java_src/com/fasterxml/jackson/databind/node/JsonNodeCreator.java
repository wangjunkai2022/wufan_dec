package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public interface JsonNodeCreator {
    ArrayNode arrayNode();

    ArrayNode arrayNode(int i2);

    ValueNode binaryNode(byte[] bArr);

    ValueNode binaryNode(byte[] bArr, int i2, int i4);

    ValueNode booleanNode(boolean z3);

    ValueNode nullNode();

    ValueNode numberNode(byte b4);

    ValueNode numberNode(double d4);

    ValueNode numberNode(float f4);

    ValueNode numberNode(int i2);

    ValueNode numberNode(long j4);

    ValueNode numberNode(Byte b4);

    ValueNode numberNode(Double d4);

    ValueNode numberNode(Float f4);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l4);

    ValueNode numberNode(Short sh);

    ValueNode numberNode(BigDecimal bigDecimal);

    ValueNode numberNode(BigInteger bigInteger);

    ValueNode numberNode(short s3);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode rawValueNode(RawValue rawValue);

    ValueNode textNode(String str);
}

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public class JsonNodeFactory implements Serializable, JsonNodeCreator {
    private static final JsonNodeFactory decimalsAsIs;
    private static final JsonNodeFactory decimalsNormalized;
    public static final JsonNodeFactory instance;
    private static final long serialVersionUID = 1;
    private final boolean _cfgBigDecimalExact;

    static {
        JsonNodeFactory jsonNodeFactory = new JsonNodeFactory(false);
        decimalsNormalized = jsonNodeFactory;
        decimalsAsIs = new JsonNodeFactory(true);
        instance = jsonNodeFactory;
    }

    public JsonNodeFactory(boolean z3) {
        this._cfgBigDecimalExact = z3;
    }

    public static JsonNodeFactory withExactBigDecimals(boolean z3) {
        return z3 ? decimalsAsIs : decimalsNormalized;
    }

    protected boolean _inIntRange(long j4) {
        return ((long) ((int) j4)) == j4;
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ArrayNode arrayNode() {
        return new ArrayNode(this);
    }

    public JsonNode missingNode() {
        return MissingNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ObjectNode objectNode() {
        return new ObjectNode(this);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode pojoNode(Object obj) {
        return new POJONode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode rawValueNode(RawValue rawValue) {
        return new POJONode(rawValue);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ArrayNode arrayNode(int i2) {
        return new ArrayNode(this, i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public BooleanNode booleanNode(boolean z3) {
        return z3 ? BooleanNode.getTrue() : BooleanNode.getFalse();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NullNode nullNode() {
        return NullNode.getInstance();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public TextNode textNode(String str) {
        return TextNode.valueOf(str);
    }

    protected JsonNodeFactory() {
        this(false);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public BinaryNode binaryNode(byte[] bArr) {
        return BinaryNode.valueOf(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public BinaryNode binaryNode(byte[] bArr, int i2, int i4) {
        return BinaryNode.valueOf(bArr, i2, i4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(byte b4) {
        return IntNode.valueOf(b4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Byte b4) {
        return b4 == null ? nullNode() : IntNode.valueOf(b4.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(short s3) {
        return ShortNode.valueOf(s3);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Short sh) {
        return sh == null ? nullNode() : ShortNode.valueOf(sh.shortValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(int i2) {
        return IntNode.valueOf(i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Integer num) {
        return num == null ? nullNode() : IntNode.valueOf(num.intValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(long j4) {
        return LongNode.valueOf(j4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Long l4) {
        if (l4 == null) {
            return nullNode();
        }
        return LongNode.valueOf(l4.longValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(BigInteger bigInteger) {
        if (bigInteger == null) {
            return nullNode();
        }
        return BigIntegerNode.valueOf(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(float f4) {
        return FloatNode.valueOf(f4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Float f4) {
        return f4 == null ? nullNode() : FloatNode.valueOf(f4.floatValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public NumericNode numberNode(double d4) {
        return DoubleNode.valueOf(d4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(Double d4) {
        return d4 == null ? nullNode() : DoubleNode.valueOf(d4.doubleValue());
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public ValueNode numberNode(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            return nullNode();
        }
        if (this._cfgBigDecimalExact) {
            return DecimalNode.valueOf(bigDecimal);
        }
        return bigDecimal.compareTo(BigDecimal.ZERO) == 0 ? DecimalNode.ZERO : DecimalNode.valueOf(bigDecimal.stripTrailingZeros());
    }
}

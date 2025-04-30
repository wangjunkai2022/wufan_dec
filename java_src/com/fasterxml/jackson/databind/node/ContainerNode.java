package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ContainerNode;
import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public abstract class ContainerNode<T extends ContainerNode<T>> extends BaseJsonNode implements JsonNodeCreator {
    private static final long serialVersionUID = 1;
    protected final JsonNodeFactory _nodeFactory;

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerNode(JsonNodeFactory jsonNodeFactory) {
        this._nodeFactory = jsonNodeFactory;
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ArrayNode arrayNode() {
        return this._nodeFactory.arrayNode();
    }

    @Override // com.fasterxml.jackson.databind.JsonNode
    public String asText() {
        return "";
    }

    @Override // com.fasterxml.jackson.databind.node.BaseJsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonToken asToken();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode get(int i2);

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract JsonNode get(String str);

    public JsonNode missingNode() {
        return this._nodeFactory.missingNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ObjectNode objectNode() {
        return this._nodeFactory.objectNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode pojoNode(Object obj) {
        return this._nodeFactory.pojoNode(obj);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode rawValueNode(RawValue rawValue) {
        return this._nodeFactory.rawValueNode(rawValue);
    }

    public abstract T removeAll();

    @Override // com.fasterxml.jackson.databind.JsonNode, com.fasterxml.jackson.core.TreeNode
    public abstract int size();

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ArrayNode arrayNode(int i2) {
        return this._nodeFactory.arrayNode(i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BooleanNode booleanNode(boolean z3) {
        return this._nodeFactory.booleanNode(z3);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NullNode nullNode() {
        return this._nodeFactory.nullNode();
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final TextNode textNode(String str) {
        return this._nodeFactory.textNode(str);
    }

    protected ContainerNode() {
        this._nodeFactory = null;
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BinaryNode binaryNode(byte[] bArr) {
        return this._nodeFactory.binaryNode(bArr);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final BinaryNode binaryNode(byte[] bArr, int i2, int i4) {
        return this._nodeFactory.binaryNode(bArr, i2, i4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(byte b4) {
        return this._nodeFactory.numberNode(b4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(short s3) {
        return this._nodeFactory.numberNode(s3);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(int i2) {
        return this._nodeFactory.numberNode(i2);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(long j4) {
        return this._nodeFactory.numberNode(j4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(float f4) {
        return this._nodeFactory.numberNode(f4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final NumericNode numberNode(double d4) {
        return this._nodeFactory.numberNode(d4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(BigInteger bigInteger) {
        return this._nodeFactory.numberNode(bigInteger);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(BigDecimal bigDecimal) {
        return this._nodeFactory.numberNode(bigDecimal);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Byte b4) {
        return this._nodeFactory.numberNode(b4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Short sh) {
        return this._nodeFactory.numberNode(sh);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Integer num) {
        return this._nodeFactory.numberNode(num);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Long l4) {
        return this._nodeFactory.numberNode(l4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Float f4) {
        return this._nodeFactory.numberNode(f4);
    }

    @Override // com.fasterxml.jackson.databind.node.JsonNodeCreator
    public final ValueNode numberNode(Double d4) {
        return this._nodeFactory.numberNode(d4);
    }
}

package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.util.JsonGeneratorDelegate;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public class FilteringGeneratorDelegate extends JsonGeneratorDelegate {
    protected boolean _allowMultipleMatches;
    protected TokenFilterContext _filterContext;
    protected TokenFilter.Inclusion _inclusion;
    protected TokenFilter _itemFilter;
    protected int _matchCount;
    protected TokenFilter rootFilter;

    @Deprecated
    public FilteringGeneratorDelegate(JsonGenerator jsonGenerator, TokenFilter tokenFilter, boolean z3, boolean z4) {
        this(jsonGenerator, tokenFilter, z3 ? TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH : TokenFilter.Inclusion.ONLY_INCLUDE_ALL, z4);
    }

    protected boolean _checkBinaryWrite() throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return false;
        }
        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
            return true;
        }
        if (tokenFilter.includeBinary()) {
            _checkParentPath();
            return true;
        }
        return false;
    }

    protected void _checkParentPath() throws IOException {
        _checkParentPath(true);
    }

    protected void _checkPropertyParentPath() throws IOException {
        this._matchCount++;
        TokenFilter.Inclusion inclusion = this._inclusion;
        if (inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
            this._filterContext.writePath(this.delegate);
        } else if (inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            this._filterContext.ensureFieldNameWritten(this.delegate);
        }
        if (this._allowMultipleMatches) {
            return;
        }
        this._filterContext.skipParentChecks();
    }

    protected boolean _checkRawValueWrite() throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return false;
        }
        if (tokenFilter == TokenFilter.INCLUDE_ALL) {
            return true;
        }
        if (tokenFilter.includeRawValue()) {
            _checkParentPath();
            return true;
        }
        return false;
    }

    public TokenFilter getFilter() {
        return this.rootFilter;
    }

    public JsonStreamContext getFilterContext() {
        return this._filterContext;
    }

    public int getMatchCount() {
        return this._matchCount;
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public JsonStreamContext getOutputContext() {
        return this._filterContext;
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i2, int i4) throws IOException {
        if (_checkBinaryWrite()) {
            this.delegate.writeBinary(base64Variant, bArr, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z3) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeBoolean(z3)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeBoolean(z3);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeEndArray() throws IOException {
        TokenFilterContext closeArray = this._filterContext.closeArray(this.delegate);
        this._filterContext = closeArray;
        if (closeArray != null) {
            this._itemFilter = closeArray.getFilter();
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeEndObject() throws IOException {
        TokenFilterContext closeObject = this._filterContext.closeObject(this.delegate);
        this._filterContext = closeObject;
        if (closeObject != null) {
            this._itemFilter = closeObject.getFilter();
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldId(long j4) throws IOException {
        writeFieldName(Long.toString(j4));
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(String str) throws IOException {
        TokenFilter fieldName = this._filterContext.setFieldName(str);
        if (fieldName == null) {
            this._itemFilter = null;
            return;
        }
        TokenFilter tokenFilter = TokenFilter.INCLUDE_ALL;
        if (fieldName == tokenFilter) {
            this._itemFilter = fieldName;
            this.delegate.writeFieldName(str);
            return;
        }
        TokenFilter includeProperty = fieldName.includeProperty(str);
        this._itemFilter = includeProperty;
        if (includeProperty == tokenFilter) {
            _checkPropertyParentPath();
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNull()) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNull();
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s3) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber((int) s3)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(s3);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeObjectId(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeObjectId(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeObjectRef(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeObjectRef(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeOmittedField(String str) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeOmittedField(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawUTF8String(bArr, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(String str) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawValue(str);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray() throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter, true);
            this.delegate.writeStartArray();
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        this._itemFilter = checkValue;
        if (checkValue == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        if (checkValue != tokenFilter2) {
            this._itemFilter = checkValue.filterStartArray();
        }
        TokenFilter tokenFilter3 = this._itemFilter;
        if (tokenFilter3 == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray();
        } else if (tokenFilter3 != null && this._inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            _checkParentPath(false);
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray();
        } else {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter3, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject() throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, true);
            this.delegate.writeStartObject();
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        if (checkValue == null) {
            return;
        }
        if (checkValue != tokenFilter2) {
            checkValue = checkValue.filterStartObject();
        }
        if (checkValue == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
            this.delegate.writeStartObject();
        } else if (checkValue != null && this._inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            _checkParentPath(false);
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
            this.delegate.writeStartObject();
        } else {
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeString(str)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeString(str);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeTypeId(Object obj) throws IOException {
        if (this._itemFilter != null) {
            this.delegate.writeTypeId(obj);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeUTF8String(bArr, i2, i4);
        }
    }

    public FilteringGeneratorDelegate(JsonGenerator jsonGenerator, TokenFilter tokenFilter, TokenFilter.Inclusion inclusion, boolean z3) {
        super(jsonGenerator, false);
        this.rootFilter = tokenFilter;
        this._itemFilter = tokenFilter;
        this._filterContext = TokenFilterContext.createRootContext(tokenFilter);
        this._inclusion = inclusion;
        this._allowMultipleMatches = z3;
    }

    protected void _checkParentPath(boolean z3) throws IOException {
        if (z3) {
            this._matchCount++;
        }
        TokenFilter.Inclusion inclusion = this._inclusion;
        if (inclusion == TokenFilter.Inclusion.INCLUDE_ALL_AND_PATH) {
            this._filterContext.writePath(this.delegate);
        } else if (inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            this._filterContext.ensureFieldNameWritten(this.delegate);
        }
        if (!z3 || this._allowMultipleMatches) {
            return;
        }
        this._filterContext.skipParentChecks();
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i2) throws IOException {
        if (_checkBinaryWrite()) {
            return this.delegate.writeBinary(base64Variant, inputStream, i2);
        }
        return -1;
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(str, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(String str, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawValue(str, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(serializableString);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(char[] cArr, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRawValue(cArr, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i2) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(i2)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(i2);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i2, int i4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(cArr, i2, i4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i2, int i4) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            String str = new String(cArr, i2, i4);
            TokenFilter checkValue = this._filterContext.checkValue(this._itemFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeString(str)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeString(cArr, i2, i4);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        TokenFilter fieldName = this._filterContext.setFieldName(serializableString.getValue());
        if (fieldName == null) {
            this._itemFilter = null;
            return;
        }
        TokenFilter tokenFilter = TokenFilter.INCLUDE_ALL;
        if (fieldName == tokenFilter) {
            this._itemFilter = fieldName;
            this.delegate.writeFieldName(serializableString);
            return;
        }
        TokenFilter includeProperty = fieldName.includeProperty(serializableString.getValue());
        this._itemFilter = includeProperty;
        if (includeProperty == tokenFilter) {
            _checkPropertyParentPath();
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c4) throws IOException {
        if (_checkRawValueWrite()) {
            this.delegate.writeRaw(c4);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j4) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(j4)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(j4);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeString(serializableString.getValue())) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeString(serializableString);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject(Object obj) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, true);
            this.delegate.writeStartObject(obj);
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        if (checkValue == null) {
            return;
        }
        if (checkValue != tokenFilter2) {
            checkValue = checkValue.filterStartObject();
        }
        if (checkValue == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
            this.delegate.writeStartObject(obj);
        } else if (checkValue != null && this._inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            _checkParentPath(false);
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
            this.delegate.writeStartObject(obj);
        } else {
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(int i2) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter, true);
            this.delegate.writeStartArray(i2);
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        this._itemFilter = checkValue;
        if (checkValue == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        if (checkValue != tokenFilter2) {
            this._itemFilter = checkValue.filterStartArray();
        }
        TokenFilter tokenFilter3 = this._itemFilter;
        if (tokenFilter3 == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray(i2);
        } else if (tokenFilter3 != null && this._inclusion == TokenFilter.Inclusion.INCLUDE_NON_NULL) {
            _checkParentPath(false);
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray(i2);
        } else {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter3, false);
        }
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(bigInteger)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(bigInteger);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeString(Reader reader, int i2) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeString(reader, i2)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeString(reader, i2);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d4) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(d4)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(d4);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f4) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(f4)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(f4);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartObject(Object obj, int i2) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildObjectContext(tokenFilter, true);
            this.delegate.writeStartObject(obj, i2);
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        if (checkValue == null) {
            return;
        }
        if (checkValue != tokenFilter2) {
            checkValue = checkValue.filterStartObject();
        }
        if (checkValue == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildObjectContext(checkValue, true);
            this.delegate.writeStartObject(obj, i2);
            return;
        }
        this._filterContext = this._filterContext.createChildObjectContext(checkValue, false);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(Object obj) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter, true);
            this.delegate.writeStartArray(obj);
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        this._itemFilter = checkValue;
        if (checkValue == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        if (checkValue != tokenFilter2) {
            this._itemFilter = checkValue.filterStartArray();
        }
        TokenFilter tokenFilter3 = this._itemFilter;
        if (tokenFilter3 == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray(obj);
            return;
        }
        this._filterContext = this._filterContext.createChildArrayContext(tokenFilter3, false);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeNumber(bigDecimal)) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(bigDecimal);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException, UnsupportedOperationException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeRawValue()) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(str);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeStartArray(Object obj, int i2) throws IOException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter == tokenFilter2) {
            this._filterContext = this._filterContext.createChildArrayContext(tokenFilter, true);
            this.delegate.writeStartArray(obj, i2);
            return;
        }
        TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
        this._itemFilter = checkValue;
        if (checkValue == null) {
            this._filterContext = this._filterContext.createChildArrayContext(null, false);
            return;
        }
        if (checkValue != tokenFilter2) {
            this._itemFilter = checkValue.filterStartArray();
        }
        TokenFilter tokenFilter3 = this._itemFilter;
        if (tokenFilter3 == tokenFilter2) {
            _checkParentPath();
            this._filterContext = this._filterContext.createChildArrayContext(this._itemFilter, true);
            this.delegate.writeStartArray(obj, i2);
            return;
        }
        this._filterContext = this._filterContext.createChildArrayContext(tokenFilter3, false);
    }

    @Override // com.fasterxml.jackson.core.util.JsonGeneratorDelegate, com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(char[] cArr, int i2, int i4) throws IOException, UnsupportedOperationException {
        TokenFilter tokenFilter = this._itemFilter;
        if (tokenFilter == null) {
            return;
        }
        TokenFilter tokenFilter2 = TokenFilter.INCLUDE_ALL;
        if (tokenFilter != tokenFilter2) {
            TokenFilter checkValue = this._filterContext.checkValue(tokenFilter);
            if (checkValue == null) {
                return;
            }
            if (checkValue != tokenFilter2 && !checkValue.includeRawValue()) {
                return;
            }
            _checkParentPath();
        }
        this.delegate.writeNumber(cArr, i2, i4);
    }
}

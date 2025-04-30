package org.jsoup.parser;

import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.Token;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Tokeniser {
    static final char replacementChar = 65533;
    Token.Comment commentPending;
    StringBuilder dataBuffer;
    Token.Doctype doctypePending;
    private Token emitPending;
    private ParseErrorList errors;
    private Token.StartTag lastStartTag;
    private CharacterReader reader;
    Token.Tag tagPending;
    private TokeniserState state = TokeniserState.Data;
    private boolean isEmitPending = false;
    private StringBuilder charBuffer = new StringBuilder();
    private boolean selfClosingFlagAcknowledged = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tokeniser(CharacterReader characterReader, ParseErrorList parseErrorList) {
        this.reader = characterReader;
        this.errors = parseErrorList;
    }

    private void characterReferenceError(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Invalid character reference: %s", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void acknowledgeSelfClosingFlag() {
        this.selfClosingFlagAcknowledged = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void advanceTransition(TokeniserState tokeniserState) {
        this.reader.advance();
        this.state = tokeniserState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String appropriateEndTagName() {
        return this.lastStartTag.tagName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char[] consumeCharacterReference(Character ch, boolean z3) {
        int i2;
        if (this.reader.isEmpty()) {
            return null;
        }
        if ((ch == null || ch.charValue() != this.reader.current()) && !this.reader.matchesAny('\t', '\n', '\r', '\f', ' ', Typography.less, Typography.amp)) {
            this.reader.mark();
            if (this.reader.matchConsume("#")) {
                boolean matchConsumeIgnoreCase = this.reader.matchConsumeIgnoreCase("X");
                CharacterReader characterReader = this.reader;
                String consumeHexSequence = matchConsumeIgnoreCase ? characterReader.consumeHexSequence() : characterReader.consumeDigitSequence();
                if (consumeHexSequence.length() == 0) {
                    characterReferenceError("numeric reference with no numerals");
                    this.reader.rewindToMark();
                    return null;
                }
                if (!this.reader.matchConsume(";")) {
                    characterReferenceError("missing semicolon");
                }
                try {
                    i2 = Integer.valueOf(consumeHexSequence, matchConsumeIgnoreCase ? 16 : 10).intValue();
                } catch (NumberFormatException unused) {
                    i2 = -1;
                }
                if (i2 != -1 && ((i2 < 55296 || i2 > 57343) && i2 <= 1114111)) {
                    return Character.toChars(i2);
                }
                characterReferenceError("character outside of valid range");
                return new char[]{65533};
            }
            String consumeLetterThenDigitSequence = this.reader.consumeLetterThenDigitSequence();
            boolean matches = this.reader.matches(';');
            if (!(Entities.isBaseNamedEntity(consumeLetterThenDigitSequence) || (Entities.isNamedEntity(consumeLetterThenDigitSequence) && matches))) {
                this.reader.rewindToMark();
                if (matches) {
                    characterReferenceError(String.format("invalid named referenece '%s'", consumeLetterThenDigitSequence));
                }
                return null;
            } else if (z3 && (this.reader.matchesLetter() || this.reader.matchesDigit() || this.reader.matchesAny('=', '-', '_'))) {
                this.reader.rewindToMark();
                return null;
            } else {
                if (!this.reader.matchConsume(";")) {
                    characterReferenceError("missing semicolon");
                }
                return new char[]{Entities.getCharacterByName(consumeLetterThenDigitSequence).charValue()};
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createCommentPending() {
        this.commentPending = new Token.Comment();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createDoctypePending() {
        this.doctypePending = new Token.Doctype();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Token.Tag createTagPending(boolean z3) {
        Token.Tag startTag = z3 ? new Token.StartTag() : new Token.EndTag();
        this.tagPending = startTag;
        return startTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createTempBuffer() {
        this.dataBuffer = new StringBuilder();
    }

    boolean currentNodeInHtmlNS() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emit(Token token) {
        Validate.isFalse(this.isEmitPending, "There is an unread token pending!");
        this.emitPending = token;
        this.isEmitPending = true;
        Token.TokenType tokenType = token.type;
        if (tokenType == Token.TokenType.StartTag) {
            Token.StartTag startTag = (Token.StartTag) token;
            this.lastStartTag = startTag;
            if (startTag.selfClosing) {
                this.selfClosingFlagAcknowledged = false;
            }
        } else if (tokenType != Token.TokenType.EndTag || ((Token.EndTag) token).attributes == null) {
        } else {
            error("Attributes incorrectly present on end tag");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emitCommentPending() {
        emit(this.commentPending);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emitDoctypePending() {
        emit(this.doctypePending);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emitTagPending() {
        this.tagPending.finaliseTag();
        emit(this.tagPending);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void eofError(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void error(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.reader.current()), tokeniserState));
        }
    }

    TokeniserState getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAppropriateEndTagToken() {
        Token.StartTag startTag = this.lastStartTag;
        if (startTag == null) {
            return false;
        }
        return this.tagPending.tagName.equals(startTag.tagName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Token read() {
        if (!this.selfClosingFlagAcknowledged) {
            error("Self closing flag not acknowledged");
            this.selfClosingFlagAcknowledged = true;
        }
        while (!this.isEmitPending) {
            this.state.read(this, this.reader);
        }
        if (this.charBuffer.length() > 0) {
            String sb = this.charBuffer.toString();
            StringBuilder sb2 = this.charBuffer;
            sb2.delete(0, sb2.length());
            return new Token.Character(sb);
        }
        this.isEmitPending = false;
        return this.emitPending;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void transition(TokeniserState tokeniserState) {
        this.state = tokeniserState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String unescapeEntities(boolean z3) {
        StringBuilder sb = new StringBuilder();
        while (!this.reader.isEmpty()) {
            sb.append(this.reader.consumeTo(Typography.amp));
            if (this.reader.matches(Typography.amp)) {
                this.reader.consume();
                char[] consumeCharacterReference = consumeCharacterReference(null, z3);
                if (consumeCharacterReference != null && consumeCharacterReference.length != 0) {
                    sb.append(consumeCharacterReference);
                } else {
                    sb.append(Typography.amp);
                }
            }
        }
        return sb.toString();
    }

    private void error(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emit(String str) {
        this.charBuffer.append(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emit(char[] cArr) {
        this.charBuffer.append(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void emit(char c4) {
        this.charBuffer.append(c4);
    }
}

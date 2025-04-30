package org.jsoup.parser;

import com.j256.ormlite.stmt.query.SimpleComparison;
import kotlin.text.Typography;
import org.jsoup.parser.Token;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public enum TokeniserState {
    Data { // from class: org.jsoup.parser.TokeniserState.1
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                tokeniser.emit(characterReader.consume());
            } else if (current == '&') {
                tokeniser.advanceTransition(TokeniserState.CharacterReferenceInData);
            } else if (current == '<') {
                tokeniser.advanceTransition(TokeniserState.TagOpen);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny(Typography.amp, Typography.less, 0));
            } else {
                tokeniser.emit(new Token.EOF());
            }
        }
    },
    CharacterReferenceInData { // from class: org.jsoup.parser.TokeniserState.2
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
            if (consumeCharacterReference == null) {
                tokeniser.emit(Typography.amp);
            } else {
                tokeniser.emit(consumeCharacterReference);
            }
            tokeniser.transition(TokeniserState.Data);
        }
    },
    Rcdata { // from class: org.jsoup.parser.TokeniserState.3
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current == '&') {
                tokeniser.advanceTransition(TokeniserState.CharacterReferenceInRcdata);
            } else if (current == '<') {
                tokeniser.advanceTransition(TokeniserState.RcdataLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny(Typography.amp, Typography.less, 0));
            } else {
                tokeniser.emit(new Token.EOF());
            }
        }
    },
    CharacterReferenceInRcdata { // from class: org.jsoup.parser.TokeniserState.4
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
            if (consumeCharacterReference == null) {
                tokeniser.emit(Typography.amp);
            } else {
                tokeniser.emit(consumeCharacterReference);
            }
            tokeniser.transition(TokeniserState.Rcdata);
        }
    },
    Rawtext { // from class: org.jsoup.parser.TokeniserState.5
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current == '<') {
                tokeniser.advanceTransition(TokeniserState.RawtextLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny(Typography.less, 0));
            } else {
                tokeniser.emit(new Token.EOF());
            }
        }
    },
    ScriptData { // from class: org.jsoup.parser.TokeniserState.6
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current == '<') {
                tokeniser.advanceTransition(TokeniserState.ScriptDataLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny(Typography.less, 0));
            } else {
                tokeniser.emit(new Token.EOF());
            }
        }
    },
    PLAINTEXT { // from class: org.jsoup.parser.TokeniserState.7
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeTo((char) 0));
            } else {
                tokeniser.emit(new Token.EOF());
            }
        }
    },
    TagOpen { // from class: org.jsoup.parser.TokeniserState.8
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == '!') {
                tokeniser.advanceTransition(TokeniserState.MarkupDeclarationOpen);
            } else if (current == '/') {
                tokeniser.advanceTransition(TokeniserState.EndTagOpen);
            } else if (current != '?') {
                if (characterReader.matchesLetter()) {
                    tokeniser.createTagPending(true);
                    tokeniser.transition(TokeniserState.TagName);
                    return;
                }
                tokeniser.error(this);
                tokeniser.emit(Typography.less);
                tokeniser.transition(TokeniserState.Data);
            } else {
                tokeniser.advanceTransition(TokeniserState.BogusComment);
            }
        }
    },
    EndTagOpen { // from class: org.jsoup.parser.TokeniserState.9
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.emit("</");
                tokeniser.transition(TokeniserState.Data);
            } else if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.transition(TokeniserState.TagName);
            } else if (characterReader.matches(Typography.greater)) {
                tokeniser.error(this);
                tokeniser.advanceTransition(TokeniserState.Data);
            } else {
                tokeniser.error(this);
                tokeniser.advanceTransition(TokeniserState.BogusComment);
            }
        }
    },
    TagName { // from class: org.jsoup.parser.TokeniserState.10
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendTagName(characterReader.consumeToAny('\t', '\n', '\r', '\f', ' ', '/', Typography.greater, 0).toLowerCase());
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.tagPending.appendTagName(TokeniserState.replacementStr);
                return;
            }
            if (consume != ' ') {
                if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                    return;
                } else if (consume == '>') {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                    return;
                }
            }
            tokeniser.transition(TokeniserState.BeforeAttributeName);
        }
    },
    RcdataLessthanSign { // from class: org.jsoup.parser.TokeniserState.11
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(TokeniserState.RCDATAEndTagOpen);
                return;
            }
            if (characterReader.matchesLetter()) {
                if (!characterReader.containsIgnoreCase("</" + tokeniser.appropriateEndTagName())) {
                    tokeniser.tagPending = new Token.EndTag(tokeniser.appropriateEndTagName());
                    tokeniser.emitTagPending();
                    characterReader.unconsume();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
            }
            tokeniser.emit(SimpleComparison.LESS_THAN_OPERATION);
            tokeniser.transition(TokeniserState.Rcdata);
        }
    },
    RCDATAEndTagOpen { // from class: org.jsoup.parser.TokeniserState.12
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(Character.toLowerCase(characterReader.current()));
                tokeniser.dataBuffer.append(Character.toLowerCase(characterReader.current()));
                tokeniser.advanceTransition(TokeniserState.RCDATAEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(TokeniserState.Rcdata);
        }
    },
    RCDATAEndTagName { // from class: org.jsoup.parser.TokeniserState.13
        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit("</" + tokeniser.dataBuffer.toString());
            characterReader.unconsume();
            tokeniser.transition(TokeniserState.Rcdata);
        }

        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(consumeLetterSequence.toLowerCase());
                tokeniser.dataBuffer.append(consumeLetterSequence);
                return;
            }
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                } else {
                    anythingElse(tokeniser, characterReader);
                }
            } else if (consume == '/') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                } else {
                    anythingElse(tokeniser, characterReader);
                }
            } else if (consume != '>') {
                anythingElse(tokeniser, characterReader);
            } else if (tokeniser.isAppropriateEndTagToken()) {
                tokeniser.emitTagPending();
                tokeniser.transition(TokeniserState.Data);
            } else {
                anythingElse(tokeniser, characterReader);
            }
        }
    },
    RawtextLessthanSign { // from class: org.jsoup.parser.TokeniserState.14
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(TokeniserState.RawtextEndTagOpen);
                return;
            }
            tokeniser.emit(Typography.less);
            tokeniser.transition(TokeniserState.Rawtext);
        }
    },
    RawtextEndTagOpen { // from class: org.jsoup.parser.TokeniserState.15
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.transition(TokeniserState.RawtextEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(TokeniserState.Rawtext);
        }
    },
    RawtextEndTagName { // from class: org.jsoup.parser.TokeniserState.16
        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit("</" + tokeniser.dataBuffer.toString());
            tokeniser.transition(TokeniserState.Rawtext);
        }

        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(consumeLetterSequence.toLowerCase());
                tokeniser.dataBuffer.append(consumeLetterSequence);
            } else if (tokeniser.isAppropriateEndTagToken() && !characterReader.isEmpty()) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                } else if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                } else if (consume != '>') {
                    tokeniser.dataBuffer.append(consume);
                    anythingElse(tokeniser, characterReader);
                } else {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            } else {
                anythingElse(tokeniser, characterReader);
            }
        }
    },
    ScriptDataLessthanSign { // from class: org.jsoup.parser.TokeniserState.17
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '!') {
                tokeniser.emit("<!");
                tokeniser.transition(TokeniserState.ScriptDataEscapeStart);
            } else if (consume != '/') {
                tokeniser.emit(SimpleComparison.LESS_THAN_OPERATION);
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.ScriptData);
            } else {
                tokeniser.createTempBuffer();
                tokeniser.transition(TokeniserState.ScriptDataEndTagOpen);
            }
        }
    },
    ScriptDataEndTagOpen { // from class: org.jsoup.parser.TokeniserState.18
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.transition(TokeniserState.ScriptDataEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(TokeniserState.ScriptData);
        }
    },
    ScriptDataEndTagName { // from class: org.jsoup.parser.TokeniserState.19
        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit("</" + tokeniser.dataBuffer.toString());
            tokeniser.transition(TokeniserState.ScriptData);
        }

        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(consumeLetterSequence.toLowerCase());
                tokeniser.dataBuffer.append(consumeLetterSequence);
            } else if (tokeniser.isAppropriateEndTagToken() && !characterReader.isEmpty()) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                } else if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                } else if (consume != '>') {
                    tokeniser.dataBuffer.append(consume);
                    anythingElse(tokeniser, characterReader);
                } else {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            } else {
                anythingElse(tokeniser, characterReader);
            }
        }
    },
    ScriptDataEscapeStart { // from class: org.jsoup.parser.TokeniserState.20
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('-')) {
                tokeniser.emit('-');
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapeStartDash);
                return;
            }
            tokeniser.transition(TokeniserState.ScriptData);
        }
    },
    ScriptDataEscapeStartDash { // from class: org.jsoup.parser.TokeniserState.21
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('-')) {
                tokeniser.emit('-');
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedDashDash);
                return;
            }
            tokeniser.transition(TokeniserState.ScriptData);
        }
    },
    ScriptDataEscaped { // from class: org.jsoup.parser.TokeniserState.22
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
                return;
            }
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current == '-') {
                tokeniser.emit('-');
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedDash);
            } else if (current != '<') {
                tokeniser.emit(characterReader.consumeToAny('-', Typography.less, 0));
            } else {
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash { // from class: org.jsoup.parser.TokeniserState.23
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataEscapedDashDash);
            } else if (consume != '<') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            } else {
                tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDashDash { // from class: org.jsoup.parser.TokeniserState.24
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
            } else if (consume == '<') {
                tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
            } else if (consume != '>') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            } else {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptData);
            }
        }
    },
    ScriptDataEscapedLessthanSign { // from class: org.jsoup.parser.TokeniserState.25
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTempBuffer();
                tokeniser.dataBuffer.append(Character.toLowerCase(characterReader.current()));
                tokeniser.emit(SimpleComparison.LESS_THAN_OPERATION + characterReader.current());
                tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapeStart);
            } else if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedEndTagOpen);
            } else {
                tokeniser.emit(Typography.less);
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagOpen { // from class: org.jsoup.parser.TokeniserState.26
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(Character.toLowerCase(characterReader.current()));
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(TokeniserState.ScriptDataEscaped);
        }
    },
    ScriptDataEscapedEndTagName { // from class: org.jsoup.parser.TokeniserState.27
        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit("</" + tokeniser.dataBuffer.toString());
            tokeniser.transition(TokeniserState.ScriptDataEscaped);
        }

        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(consumeLetterSequence.toLowerCase());
                tokeniser.dataBuffer.append(consumeLetterSequence);
            } else if (tokeniser.isAppropriateEndTagToken() && !characterReader.isEmpty()) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                } else if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                } else if (consume != '>') {
                    tokeniser.dataBuffer.append(consume);
                    anythingElse(tokeniser, characterReader);
                } else {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            } else {
                anythingElse(tokeniser, characterReader);
            }
        }
    },
    ScriptDataDoubleEscapeStart { // from class: org.jsoup.parser.TokeniserState.28
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.dataBuffer.append(consumeLetterSequence.toLowerCase());
                tokeniser.emit(consumeLetterSequence);
                return;
            }
            char consume = characterReader.consume();
            if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ' && consume != '/' && consume != '>') {
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
                return;
            }
            if (tokeniser.dataBuffer.toString().equals("script")) {
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            }
            tokeniser.emit(consume);
        }
    },
    ScriptDataDoubleEscaped { // from class: org.jsoup.parser.TokeniserState.29
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.emit((char) 65533);
            } else if (current == '-') {
                tokeniser.emit(current);
                tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedDash);
            } else if (current == '<') {
                tokeniser.emit(current);
                tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny('-', Typography.less, 0));
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDash { // from class: org.jsoup.parser.TokeniserState.30
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedDashDash);
            } else if (consume == '<') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (consume != 65535) {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash { // from class: org.jsoup.parser.TokeniserState.31
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.emit((char) 65533);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
            } else if (consume == '<') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
            } else if (consume == '>') {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptData);
            } else if (consume != 65535) {
                tokeniser.emit(consume);
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign { // from class: org.jsoup.parser.TokeniserState.32
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.emit('/');
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapeEnd);
                return;
            }
            tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
        }
    },
    ScriptDataDoubleEscapeEnd { // from class: org.jsoup.parser.TokeniserState.33
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.dataBuffer.append(consumeLetterSequence.toLowerCase());
                tokeniser.emit(consumeLetterSequence);
                return;
            }
            char consume = characterReader.consume();
            if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ' && consume != '/' && consume != '>') {
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                return;
            }
            if (tokeniser.dataBuffer.toString().equals("script")) {
                tokeniser.transition(TokeniserState.ScriptDataEscaped);
            } else {
                tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
            }
            tokeniser.emit(consume);
        }
    },
    BeforeAttributeName { // from class: org.jsoup.parser.TokeniserState.34
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.AttributeName);
            } else if (consume != ' ') {
                if (consume != '\"' && consume != '\'') {
                    if (consume == '/') {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                        return;
                    } else {
                        switch (consume) {
                            case '<':
                            case '=':
                                break;
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(TokeniserState.Data);
                                return;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(TokeniserState.AttributeName);
                                return;
                        }
                    }
                }
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(consume);
                tokeniser.transition(TokeniserState.AttributeName);
            }
        }
    },
    AttributeName { // from class: org.jsoup.parser.TokeniserState.35
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendAttributeName(characterReader.consumeToAny('\t', '\n', '\r', '\f', ' ', '/', '=', Typography.greater, 0, '\"', '\'', Typography.less).toLowerCase());
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume == '/') {
                            tokeniser.transition(TokeniserState.SelfClosingStartTag);
                            return;
                        } else if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                            switch (consume) {
                                case '<':
                                    break;
                                case '=':
                                    tokeniser.transition(TokeniserState.BeforeAttributeValue);
                                    return;
                                case '>':
                                    tokeniser.emitTagPending();
                                    tokeniser.transition(TokeniserState.Data);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeName(consume);
                    return;
                }
                tokeniser.transition(TokeniserState.AfterAttributeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.tagPending.appendAttributeName((char) 65533);
        }
    },
    AfterAttributeName { // from class: org.jsoup.parser.TokeniserState.36
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeName((char) 65533);
                tokeniser.transition(TokeniserState.AttributeName);
            } else if (consume != ' ') {
                if (consume != '\"' && consume != '\'') {
                    if (consume == '/') {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                        return;
                    } else {
                        switch (consume) {
                            case '<':
                                break;
                            case '=':
                                tokeniser.transition(TokeniserState.BeforeAttributeValue);
                                return;
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(TokeniserState.Data);
                                return;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(TokeniserState.AttributeName);
                                return;
                        }
                    }
                }
                tokeniser.error(this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(consume);
                tokeniser.transition(TokeniserState.AttributeName);
            }
        }
    },
    BeforeAttributeValue { // from class: org.jsoup.parser.TokeniserState.37
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
                tokeniser.transition(TokeniserState.AttributeValue_unquoted);
            } else if (consume != ' ') {
                if (consume != '\"') {
                    if (consume != '`') {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        } else if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        } else {
                            if (consume == '&') {
                                characterReader.unconsume();
                                tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                                return;
                            } else if (consume != '\'') {
                                switch (consume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.error(this);
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(TokeniserState.Data);
                                        return;
                                    default:
                                        characterReader.unconsume();
                                        tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                                        return;
                                }
                            } else {
                                tokeniser.transition(TokeniserState.AttributeValue_singleQuoted);
                                return;
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(consume);
                    tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                    return;
                }
                tokeniser.transition(TokeniserState.AttributeValue_doubleQuoted);
            }
        }
    },
    AttributeValue_doubleQuoted { // from class: org.jsoup.parser.TokeniserState.38
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAny = characterReader.consumeToAny('\"', Typography.amp, 0);
            if (consumeToAny.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAny);
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
            } else if (consume == '\"') {
                tokeniser.transition(TokeniserState.AfterAttributeValue_quoted);
            } else if (consume != '&') {
                if (consume != 65535) {
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            } else {
                char[] consumeCharacterReference = tokeniser.consumeCharacterReference('\"', true);
                if (consumeCharacterReference != null) {
                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                } else {
                    tokeniser.tagPending.appendAttributeValue(Typography.amp);
                }
            }
        }
    },
    AttributeValue_singleQuoted { // from class: org.jsoup.parser.TokeniserState.39
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAny = characterReader.consumeToAny('\'', Typography.amp, 0);
            if (consumeToAny.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAny);
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.tagPending.appendAttributeValue((char) 65533);
            } else if (consume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != '&') {
                if (consume != '\'') {
                    return;
                }
                tokeniser.transition(TokeniserState.AfterAttributeValue_quoted);
            } else {
                char[] consumeCharacterReference = tokeniser.consumeCharacterReference('\'', true);
                if (consumeCharacterReference != null) {
                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                } else {
                    tokeniser.tagPending.appendAttributeValue(Typography.amp);
                }
            }
        }
    },
    AttributeValue_unquoted { // from class: org.jsoup.parser.TokeniserState.40
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAny = characterReader.consumeToAny('\t', '\n', '\r', '\f', ' ', Typography.amp, Typography.greater, 0, '\"', '\'', Typography.less, '=', '`');
            if (consumeToAny.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAny);
            }
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (consume != '\"' && consume != '`') {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                            if (consume == '&') {
                                char[] consumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf(Typography.greater), true);
                                if (consumeCharacterReference != null) {
                                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                                    return;
                                } else {
                                    tokeniser.tagPending.appendAttributeValue(Typography.amp);
                                    return;
                                }
                            } else if (consume != '\'') {
                                switch (consume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(TokeniserState.Data);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(consume);
                    return;
                }
                tokeniser.transition(TokeniserState.BeforeAttributeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.tagPending.appendAttributeValue((char) 65533);
        }
    },
    AfterAttributeValue_quoted { // from class: org.jsoup.parser.TokeniserState.41
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            } else if (consume == '/') {
                tokeniser.transition(TokeniserState.SelfClosingStartTag);
            } else if (consume == '>') {
                tokeniser.emitTagPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    SelfClosingStartTag { // from class: org.jsoup.parser.TokeniserState.42
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '>') {
                tokeniser.tagPending.selfClosing = true;
                tokeniser.emitTagPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BogusComment { // from class: org.jsoup.parser.TokeniserState.43
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            characterReader.unconsume();
            Token.Comment comment = new Token.Comment();
            comment.bogus = true;
            comment.data.append(characterReader.consumeTo(Typography.greater));
            tokeniser.emit(comment);
            tokeniser.advanceTransition(TokeniserState.Data);
        }
    },
    MarkupDeclarationOpen { // from class: org.jsoup.parser.TokeniserState.44
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchConsume("--")) {
                tokeniser.createCommentPending();
                tokeniser.transition(TokeniserState.CommentStart);
            } else if (characterReader.matchConsumeIgnoreCase("DOCTYPE")) {
                tokeniser.transition(TokeniserState.Doctype);
            } else if (characterReader.matchConsume("[CDATA[")) {
                tokeniser.transition(TokeniserState.CdataSection);
            } else {
                tokeniser.error(this);
                tokeniser.advanceTransition(TokeniserState.BogusComment);
            }
        }
    },
    CommentStart { // from class: org.jsoup.parser.TokeniserState.45
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.data.append((char) 65533);
                tokeniser.transition(TokeniserState.Comment);
            } else if (consume == '-') {
                tokeniser.transition(TokeniserState.CommentStartDash);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.commentPending.data.append(consume);
                tokeniser.transition(TokeniserState.Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    CommentStartDash { // from class: org.jsoup.parser.TokeniserState.46
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.commentPending.data.append((char) 65533);
                tokeniser.transition(TokeniserState.Comment);
            } else if (consume == '-') {
                tokeniser.transition(TokeniserState.CommentStartDash);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.commentPending.data.append(consume);
                tokeniser.transition(TokeniserState.Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    Comment { // from class: org.jsoup.parser.TokeniserState.47
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error(this);
                characterReader.advance();
                tokeniser.commentPending.data.append((char) 65533);
            } else if (current == '-') {
                tokeniser.advanceTransition(TokeniserState.CommentEndDash);
            } else if (current != 65535) {
                tokeniser.commentPending.data.append(characterReader.consumeToAny('-', 0));
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    CommentEndDash { // from class: org.jsoup.parser.TokeniserState.48
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append('-');
                sb.append((char) 65533);
                tokeniser.transition(TokeniserState.Comment);
            } else if (consume == '-') {
                tokeniser.transition(TokeniserState.CommentEnd);
            } else if (consume != 65535) {
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append('-');
                sb2.append(consume);
                tokeniser.transition(TokeniserState.Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    CommentEnd { // from class: org.jsoup.parser.TokeniserState.49
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append("--");
                sb.append((char) 65533);
                tokeniser.transition(TokeniserState.Comment);
            } else if (consume == '!') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.CommentEndBang);
            } else if (consume == '-') {
                tokeniser.error(this);
                tokeniser.commentPending.data.append('-');
            } else if (consume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append("--");
                sb2.append(consume);
                tokeniser.transition(TokeniserState.Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    CommentEndBang { // from class: org.jsoup.parser.TokeniserState.50
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append("--!");
                sb.append((char) 65533);
                tokeniser.transition(TokeniserState.Comment);
            } else if (consume == '-') {
                tokeniser.commentPending.data.append("--!");
                tokeniser.transition(TokeniserState.CommentEndDash);
            } else if (consume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append("--!");
                sb2.append(consume);
                tokeniser.transition(TokeniserState.Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    Doctype { // from class: org.jsoup.parser.TokeniserState.51
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(TokeniserState.BeforeDoctypeName);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.BeforeDoctypeName);
            } else {
                tokeniser.eofError(this);
                tokeniser.createDoctypePending();
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypeName { // from class: org.jsoup.parser.TokeniserState.52
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createDoctypePending();
                tokeniser.transition(TokeniserState.DoctypeName);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.name.append((char) 65533);
                tokeniser.transition(TokeniserState.DoctypeName);
            } else if (consume != ' ') {
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.createDoctypePending();
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                } else {
                    tokeniser.createDoctypePending();
                    tokeniser.doctypePending.name.append(consume);
                    tokeniser.transition(TokeniserState.DoctypeName);
                }
            }
        }
    },
    DoctypeName { // from class: org.jsoup.parser.TokeniserState.53
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.doctypePending.name.append(characterReader.consumeLetterSequence().toLowerCase());
                return;
            }
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (consume == '>') {
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                        tokeniser.doctypePending.name.append(consume);
                        return;
                    }
                }
                tokeniser.transition(TokeniserState.AfterDoctypeName);
                return;
            }
            tokeniser.error(this);
            tokeniser.doctypePending.name.append((char) 65533);
        }
    },
    AfterDoctypeName { // from class: org.jsoup.parser.TokeniserState.54
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (characterReader.matchesAny('\t', '\n', '\r', '\f', ' ')) {
                characterReader.advance();
            } else if (characterReader.matches(Typography.greater)) {
                tokeniser.emitDoctypePending();
                tokeniser.advanceTransition(TokeniserState.Data);
            } else if (characterReader.matchConsumeIgnoreCase("PUBLIC")) {
                tokeniser.transition(TokeniserState.AfterDoctypePublicKeyword);
            } else if (characterReader.matchConsumeIgnoreCase("SYSTEM")) {
                tokeniser.transition(TokeniserState.AfterDoctypeSystemKeyword);
            } else {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.advanceTransition(TokeniserState.BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword { // from class: org.jsoup.parser.TokeniserState.55
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(TokeniserState.BeforeDoctypePublicIdentifier);
            } else if (consume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypePublicIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypePublicIdentifier { // from class: org.jsoup.parser.TokeniserState.56
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                return;
            }
            if (consume == '\"') {
                tokeniser.transition(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.transition(TokeniserState.DoctypePublicIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted { // from class: org.jsoup.parser.TokeniserState.57
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.publicIdentifier.append((char) 65533);
            } else if (consume == '\"') {
                tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.publicIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted { // from class: org.jsoup.parser.TokeniserState.58
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.publicIdentifier.append((char) 65533);
            } else if (consume == '\'') {
                tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.publicIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    AfterDoctypePublicIdentifier { // from class: org.jsoup.parser.TokeniserState.59
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(TokeniserState.BetweenDoctypePublicAndSystemIdentifiers);
            } else if (consume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers { // from class: org.jsoup.parser.TokeniserState.60
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                return;
            }
            if (consume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    AfterDoctypeSystemKeyword { // from class: org.jsoup.parser.TokeniserState.61
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(TokeniserState.BeforeDoctypeSystemIdentifier);
            } else if (consume == '\"') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BeforeDoctypeSystemIdentifier { // from class: org.jsoup.parser.TokeniserState.62
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                return;
            }
            if (consume == '\"') {
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted { // from class: org.jsoup.parser.TokeniserState.63
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.systemIdentifier.append((char) 65533);
            } else if (consume == '\"') {
                tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.systemIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted { // from class: org.jsoup.parser.TokeniserState.64
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error(this);
                tokeniser.doctypePending.systemIdentifier.append((char) 65533);
            } else if (consume == '\'') {
                tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
            } else if (consume == '>') {
                tokeniser.error(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.systemIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    AfterDoctypeSystemIdentifier { // from class: org.jsoup.parser.TokeniserState.65
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                return;
            }
            if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
                tokeniser.error(this);
                tokeniser.transition(TokeniserState.BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    BogusDoctype { // from class: org.jsoup.parser.TokeniserState.66
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            } else if (consume != 65535) {
            } else {
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        }
    },
    CdataSection { // from class: org.jsoup.parser.TokeniserState.67
        @Override // org.jsoup.parser.TokeniserState
        void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.emit(characterReader.consumeTo("]]>"));
            characterReader.matchConsume("]]>");
            tokeniser.transition(TokeniserState.Data);
        }
    };
    
    private static final char eof = 65535;
    private static final char nullChar = 0;
    private static final char replacementChar = 65533;
    private static final String replacementStr = String.valueOf((char) 65533);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void read(Tokeniser tokeniser, CharacterReader characterReader);
}

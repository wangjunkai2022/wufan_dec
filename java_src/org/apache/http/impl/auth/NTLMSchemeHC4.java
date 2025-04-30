package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.auth.NTCredentials;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@NotThreadSafe
/* loaded from: classes5.dex */
public class NTLMSchemeHC4 extends AuthSchemeBaseHC4 {
    private String challenge;
    private final NTLMEngine engine;
    private State state;

    /* loaded from: classes5.dex */
    enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        MSG_TYPE1_GENERATED,
        MSG_TYPE2_RECEVIED,
        MSG_TYPE3_GENERATED,
        FAILED
    }

    public NTLMSchemeHC4(NTLMEngine nTLMEngine) {
        Args.notNull(nTLMEngine, "NTLM engine");
        this.engine = nTLMEngine;
        this.state = State.UNINITIATED;
        this.challenge = null;
    }

    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        String generateType3Msg;
        try {
            NTCredentials nTCredentials = (NTCredentials) credentials;
            State state = this.state;
            if (state != State.FAILED) {
                if (state == State.CHALLENGE_RECEIVED) {
                    generateType3Msg = this.engine.generateType1Msg(nTCredentials.getDomain(), nTCredentials.getWorkstation());
                    this.state = State.MSG_TYPE1_GENERATED;
                } else if (state == State.MSG_TYPE2_RECEVIED) {
                    generateType3Msg = this.engine.generateType3Msg(nTCredentials.getUserName(), nTCredentials.getPassword(), nTCredentials.getDomain(), nTCredentials.getWorkstation(), this.challenge);
                    this.state = State.MSG_TYPE3_GENERATED;
                } else {
                    throw new AuthenticationException("Unexpected state: " + this.state);
                }
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
                if (isProxy()) {
                    charArrayBuffer.append("Proxy-Authorization");
                } else {
                    charArrayBuffer.append("Authorization");
                }
                charArrayBuffer.append(": NTLM ");
                charArrayBuffer.append(generateType3Msg);
                return new BufferedHeader(charArrayBuffer);
            }
            throw new AuthenticationException("NTLM authentication failed");
        } catch (ClassCastException unused) {
            throw new InvalidCredentialsException("Credentials cannot be used for NTLM authentication: " + credentials.getClass().getName());
        }
    }

    public String getParameter(String str) {
        return null;
    }

    public String getRealm() {
        return null;
    }

    public String getSchemeName() {
        return "ntlm";
    }

    public boolean isComplete() {
        State state = this.state;
        return state == State.MSG_TYPE3_GENERATED || state == State.FAILED;
    }

    public boolean isConnectionBased() {
        return true;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i2, int i4) throws MalformedChallengeException {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i2, i4);
        this.challenge = substringTrimmed;
        if (substringTrimmed.length() == 0) {
            if (this.state == State.UNINITIATED) {
                this.state = State.CHALLENGE_RECEIVED;
                return;
            } else {
                this.state = State.FAILED;
                return;
            }
        }
        State state = this.state;
        State state2 = State.MSG_TYPE1_GENERATED;
        if (state.compareTo(state2) >= 0) {
            if (this.state == state2) {
                this.state = State.MSG_TYPE2_RECEVIED;
                return;
            }
            return;
        }
        this.state = State.FAILED;
        throw new MalformedChallengeException("Out of sequence NTLM response message");
    }

    public NTLMSchemeHC4() {
        this(new NTLMEngineImpl());
    }
}

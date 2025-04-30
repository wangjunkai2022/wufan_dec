package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes2.dex */
final class BlockParsedResult {
    private final DecodedInformation decodedInformation;
    private final boolean finished;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockParsedResult(boolean z3) {
        this(null, z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodedInformation getDecodedInformation() {
        return this.decodedInformation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFinished() {
        return this.finished;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockParsedResult(DecodedInformation decodedInformation, boolean z3) {
        this.finished = z3;
        this.decodedInformation = decodedInformation;
    }
}

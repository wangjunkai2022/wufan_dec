.class public Lcom/cmic/sso/sdk/c;
.super Ljava/lang/Object;
.source "ConstantsEx.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

    const-string/jumbo v1, "\u4e2d\u56fd\u7535\u4fe1\u5929\u7ffc\u8d26\u53f7\u670d\u52a1\u6761\u6b3e"

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a\u8ba4\u8bc1\u670d\u52a1\u534f\u8bae"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->a:[Ljava/lang/String;

    const-string/jumbo v0, "\u4e2d\u570b\u79fb\u52d5\u8a8d\u8b49\u670d\u52d9\u689d\u6b3e"

    const-string/jumbo v1, "\u4e2d\u570b\u96fb\u4fe1\u5929\u7ffc\u8cec\u865f\u670d\u52d9\u689d\u6b3e"

    const-string/jumbo v2, "\u4e2d\u570b\u806f\u901a\u8a8d\u8b49\u670d\u52d9\u5354\u8b70"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->b:[Ljava/lang/String;

    const-string v0, "China Mobile Authentication Service Term"

    const-string v1, "China Telecom Esurfing Account Service Terms"

    const-string v2, "China Unicom Certification Service Agreement"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->c:[Ljava/lang/String;

    const-string/jumbo v0, "\u670d\u52a1\u6761\u6b3e"

    const-string/jumbo v1, "\u670d\u52d9\u689d\u6b3e"

    const-string v2, "Service Term"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/c;->d:[Ljava/lang/String;

    return-void
.end method

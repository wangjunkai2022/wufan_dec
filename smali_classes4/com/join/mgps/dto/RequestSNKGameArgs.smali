.class public Lcom/join/mgps/dto/RequestSNKGameArgs;
.super Ljava/lang/Object;
.source "RequestSNKGameArgs.java"


# instance fields
.field private key_word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSNKGameArgs;->key_word:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey_word()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSNKGameArgs;->key_word:Ljava/lang/String;

    return-object v0
.end method

.method public setKey_word(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSNKGameArgs;->key_word:Ljava/lang/String;

    return-void
.end method

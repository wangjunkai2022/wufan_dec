.class Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Ljava/lang/StringBuilder;

.field final publicIdentifier:Ljava/lang/StringBuilder;

.field final systemIdentifier:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 6
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.class final Lorg/apache/http/conn/ssl/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final COMMA_OR_PLUS:Ljava/util/BitSet;

.field private static final EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

.field public static final INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;


# instance fields
.field private final tokenParser:Lorg/apache/http/conn/ssl/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->INSTANCE:Lorg/apache/http/conn/ssl/DistinguishedNameParser;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/apache/http/conn/ssl/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    return-void

    :array_0
    .array-data 4
        0x3d
        0x2c
        0x2b
    .end array-data

    :array_1
    .array-data 4
        0x2c
        0x2b
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser$InternalTokenParser;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/util/CharArrayBuffer;",
            "Lorg/apache/http/message/ParserCursor;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/conn/ssl/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 3
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method parseParameter(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->EQUAL_OR_COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 5
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    .line 6
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    sget-object v1, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->COMMA_OR_PLUS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 10
    :cond_2
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {p2, v0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/conn/ssl/DistinguishedNameParser;->tokenParser:Lorg/apache/http/conn/ssl/TokenParser;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/TokenParser;->parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

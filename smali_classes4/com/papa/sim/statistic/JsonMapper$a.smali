.class Lcom/papa/sim/statistic/JsonMapper$a;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "JsonMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/JsonMapper;->initJsonMapper(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/JsonMapper;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/JsonMapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/JsonMapper$a;->a:Lcom/papa/sim/statistic/JsonMapper;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, ""

    .line 1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

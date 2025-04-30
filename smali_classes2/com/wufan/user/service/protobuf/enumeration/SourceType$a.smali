.class Lcom/wufan/user/service/protobuf/enumeration/SourceType$a;
.super Ljava/lang/Object;
.source "SourceType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/enumeration/SourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/wufan/user/service/protobuf/enumeration/SourceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/enumeration/SourceType$a;->a(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    move-result-object p1

    return-object p1
.end method

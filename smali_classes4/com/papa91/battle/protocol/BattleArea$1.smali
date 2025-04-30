.class Lcom/papa91/battle/protocol/BattleArea$1;
.super Ljava/lang/Object;
.source "BattleArea.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/BattleArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/papa91/battle/protocol/BattleArea;",
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
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/BattleArea$1;->findValueByNumber(I)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/papa91/battle/protocol/BattleArea;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/papa91/battle/protocol/BattleArea;->forNumber(I)Lcom/papa91/battle/protocol/BattleArea;

    move-result-object p1

    return-object p1
.end method

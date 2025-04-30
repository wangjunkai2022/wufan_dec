.class Lcom/papa91/arc/EmuActivity_fba$3;
.super Ljava/lang/Object;
.source "EmuActivity_fba.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_fba;->getGateData()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/papa91/arc/bean/GateBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_fba;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_fba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_fba$3;->this$0:Lcom/papa91/arc/EmuActivity_fba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/papa91/arc/bean/GateBean;Lcom/papa91/arc/bean/GateBean;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/papa91/arc/bean/GateBean;

    check-cast p2, Lcom/papa91/arc/bean/GateBean;

    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/EmuActivity_fba$3;->compare(Lcom/papa91/arc/bean/GateBean;Lcom/papa91/arc/bean/GateBean;)I

    move-result p1

    return p1
.end method

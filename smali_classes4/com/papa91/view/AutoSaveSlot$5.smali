.class Lcom/papa91/view/AutoSaveSlot$5;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot;->getSlots()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$5;->this$0:Lcom/papa91/view/AutoSaveSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/papa91/view/AutoSaveSlot$5;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

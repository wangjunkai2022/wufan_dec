.class Lcom/papa91/arc/EmuActivity_psp$14;
.super Ljava/lang/Object;
.source "EmuActivity_psp.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->getOStateFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;

.field final synthetic val$romName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$14;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$14;->val$romName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "."

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ppst"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$14;->val$romName:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$14;->val$romName:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

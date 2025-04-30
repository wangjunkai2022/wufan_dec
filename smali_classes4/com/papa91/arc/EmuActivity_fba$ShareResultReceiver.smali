.class public Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuActivity_fba.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_fba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_fba;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/EmuActivity_fba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_fba;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "shareResult"

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    return-void
.end method

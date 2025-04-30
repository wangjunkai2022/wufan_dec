.class final Lcom/ss/android/downloadlib/g/a$1;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->g()Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/g/a;->b()V

    return-void
.end method

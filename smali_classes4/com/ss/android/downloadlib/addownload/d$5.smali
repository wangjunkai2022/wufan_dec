.class Lcom/ss/android/downloadlib/addownload/d$5;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d;->a(ILjava/lang/String;JLcom/ss/android/downloadad/api/a/b;JLcom/ss/android/downloadlib/addownload/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/e$a;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d;Lcom/ss/android/downloadlib/addownload/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$5;->b:Lcom/ss/android/downloadlib/addownload/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$5;->a:Lcom/ss/android/downloadlib/addownload/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$5;->a:Lcom/ss/android/downloadlib/addownload/e$a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/e$a;->a()V

    return-void
.end method

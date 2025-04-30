.class Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$e;
.super Ljava/lang/Object;
.source "MyGameUpdateManagerActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->S0(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$e;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$e;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$e;->b:Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$e;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->d1(Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;Ljava/util/HashMap;)V

    return-void
.end method

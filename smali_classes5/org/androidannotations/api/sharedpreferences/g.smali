.class public final Lorg/androidannotations/api/sharedpreferences/g;
.super Lorg/androidannotations/api/sharedpreferences/b;
.source "FloatPrefField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/sharedpreferences/b<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/androidannotations/api/sharedpreferences/b;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/g;->j(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic h(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/g;->k(Ljava/lang/Float;)V

    return-void
.end method

.method public j(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    :try_start_1
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->b:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 4
    :catch_1
    throw v0
.end method

.method protected k(Ljava/lang/Float;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

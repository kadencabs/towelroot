.class public Lcom/geohot/towelroot/TowelRoot;
.super Landroid/app/Activity;
.source "TowelRoot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "towelroot_java"


# instance fields
.field didrun:Z

.field fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field tclick:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "exploit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/geohot/towelroot/TowelRoot;->tclick:I

    return-void
.end method

.method private fillInFingerprint()V
    .locals 8

    .prologue
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    .line 69
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "fingerprint"

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "hardware"

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "serial"

    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "kernel"

    invoke-virtual {p0}, Lcom/geohot/towelroot/TowelRoot;->javaSucksAssReadTheKernelVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 75
    .local v3, "random":Ljava/security/SecureRandom;
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x40

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "nonce":Ljava/lang/String;
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "nonce"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "appversion"

    invoke-direct {p0}, Lcom/geohot/towelroot/TowelRoot;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const v4, 0x7f050003

    invoke-virtual {p0, v4}, Lcom/geohot/towelroot/TowelRoot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 79
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "modstring":Ljava/lang/String;
    iget-object v4, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "modstring"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "3.2"

    return-object v0
.end method

.method private queryServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "reportType"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 86
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://towelroot.appspot.com/report/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v6, p0, Lcom/geohot/towelroot/TowelRoot;->fingerprint:Ljava/util/List;

    invoke-direct {v5, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 89
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v5, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-virtual {v5, v3}, Lorg/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 96
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v5, "towelroot_java"

    const-string v6, "got ClientProtocolException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const-string v4, ""

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "towelroot_java"

    const-string v6, "got IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public buttonClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-boolean v2, p0, Lcom/geohot/towelroot/TowelRoot;->didrun:Z

    if-nez v2, :cond_0

    .line 111
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/geohot/towelroot/TowelRoot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, "1337 0 1 0 4 0"

    invoke-virtual {p0, v2}, Lcom/geohot/towelroot/TowelRoot;->rootTheShit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iput-boolean v3, p0, Lcom/geohot/towelroot/TowelRoot;->didrun:Z

    .line 115
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public native javaSucksAssReadTheKernelVersion()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/geohot/towelroot/TowelRoot;->setContentView(I)V

    .line 65
    return-void
.end method

.method public native rootTheShit(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public titleClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const-string v1, "towelroot_java"

    const-string v2, "title clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v1, p0, Lcom/geohot/towelroot/TowelRoot;->tclick:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/geohot/towelroot/TowelRoot;->tclick:I

    .line 102
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/geohot/towelroot/TowelRoot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 103
    .local v0, "et":Landroid/widget/EditText;
    iget v1, p0, Lcom/geohot/towelroot/TowelRoot;->tclick:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/geohot/towelroot/TowelRoot;->didrun:Z

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 105
    const-string v1, "1337 0 1 0 4 0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

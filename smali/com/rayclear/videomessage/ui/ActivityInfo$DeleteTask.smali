.class Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;
.super Landroid/os/AsyncTask;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    .line 679
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/api/del_activity.json?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "activity_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v6}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v6

    iget v6, v6, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 681
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 682
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 683
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v5}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 684
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 685
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStatusCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 686
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 690
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$1(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const-string v1, "\u5df2\u5220\u9664\u6d3b\u52a8"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 699
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->finish()V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const-string v1, "\u5220\u9664\u6d3b\u52a8\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

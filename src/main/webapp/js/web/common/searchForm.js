// form submit
var SearchForm = function() {

    var f = {};
    var o = { $f:jQuery(f), id:"searchForm", method:"GET" };

    if(o.id == "searchForm"){
        $("#searchForm")[0].reset();
    }

    f.url = function(url)
    {
        if (arguments.length == 0) {
            return o.url;
        }

        // o.url = url;
        $("#" + o.id).attr('action', url);

        return f;
    };

    f.method = function(method)
    {
        if (arguments.length == 0) {
            return o.method;
        }

        // o.method = method;
        $("#" + o.id).attr('method', method);

        return f;
    };

    f.param = function(key, value)
    {
        if (arguments.length == 2) {
            // $("#" + o.id).append($('<input/>', {type: 'hidden', name: key, value:value }));
            var $form = $("#" + o.id);
            var $existingInput = $form.find('input[name="' + key + '"]');

            if ($existingInput.length > 0) {
                $existingInput.val(value);
            } else {
                $form.append($('<input/>', {type: 'hidden', name: key, value: value }));
            }
        }
        return f;
    };

    f.submit = function submit() {
        var frm = $("#" + o.id)[0];

        // frm.action = o.url;
        // frm.method = "POST";
        frm.submit();
    }

    return f;
};
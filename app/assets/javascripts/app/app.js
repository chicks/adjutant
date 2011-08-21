if (typeof AA == "undefined")  {
    AA = {
        namespace: function (ns) {
            this[ns] = this[ns] || {};
            return this[ns];
        }
    };
}
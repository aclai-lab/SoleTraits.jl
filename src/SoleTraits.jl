module SoleTraits

const Traits = [
    # Supervised, unsupervised or semi-supervised?
    :is_supervised,
    :is_unsupervised,
    :is_semisupervised,

    # Univariate or multivariate?
    :is_univariate,
    :is_multivariate,

    # Structured or unstructured?
    # :is_structured,
    # :is_unstructured,

    # Deterministic or randomized?
    # :is_deterministic,
    # :is_randomized,

    # Pure or hybrid?
    # :is_pure,
    # :is_hybrid,

    # :is_static,
    # :is_dimensional,

    # Logic traits
    # :is_proposition,
    # :is_unary_operator,
    # :is_binary_operator,
    # :is_formula,

    # Utils
    :hyperparameters,
    :hyperparameters_types,
]

for t in Traits
    @eval(export $t)
end

is_supervised(::Type)       = false
is_unsupervised(::Type)     = false
is_semisupervised(::Type)   = false

is_univariate(::Type)       = false
is_multivariate(::Type)     = false

## MAKE TRAITS ACT ON INSTANCES AS WELL AS TYPES (from MLJ)
for t in Traits
    @eval($t(x) = $t(typeof(x)))
end

# Not really traits (from MLJ)
hyperparamenters(T::Type)       = fieldnames(T)
hyperparameters_types(T::Type)  = string.(fieldtypes(T))

end

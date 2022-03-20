using Nanoid
using Test

@testset "Nanoid.jl" begin
    @testset "Randomness" begin
        @test nanoid() != nanoid()
    end
    @testset "Length" begin
        @test length(nanoid()) == 21
        @test length(nanoid(1)) == 1
        @test length(nanoid(255)) == 255
        @test length(nanoid(25)) == 25
    end

    @testset "Errors" begin
        @test_throws ErrorException("size must be at least 1") nanoid(-1)
    end

    @testset "Custom alphabet" begin
        output = nanoid(;alphabet = "ABCDE")

        for chars in output
            @test chars in "ABCDE"
        end
    end
end
